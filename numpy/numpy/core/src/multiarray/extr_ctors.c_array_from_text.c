
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int (* skip_separator ) (void**,char*,void*) ;
typedef scalar_t__ npy_intp ;
typedef int (* next_element ) (void**,char*,TYPE_1__*,void*) ;
struct TYPE_14__ {char* data; } ;
struct TYPE_13__ {scalar_t__ elsize; } ;
typedef TYPE_1__ PyArray_Descr ;
typedef TYPE_3__ PyArrayObject_fields ;
typedef TYPE_1__ PyArrayObject ;


 scalar_t__ DEPRECATE (char*) ;
 scalar_t__ FROM_BUFFER_SIZE ;
 int NPY_BEGIN_ALLOW_THREADS ;
 int NPY_END_ALLOW_THREADS ;
 char* PyArray_DATA (TYPE_1__*) ;
 size_t* PyArray_DIMS (TYPE_1__*) ;
 size_t PyArray_MAX (size_t,int) ;
 scalar_t__ PyArray_NewFromDescr (int *,TYPE_1__*,int,scalar_t__*,int *,int *,int ,int *) ;
 int PyArray_Type ;
 char* PyDataMem_RENEW (char*,size_t const) ;
 int PyErr_NoMemory () ;
 scalar_t__ PyErr_Occurred () ;
 int Py_DECREF (TYPE_1__*) ;
 int Py_INCREF (TYPE_1__*) ;
 int free (char*) ;
 char* swab_separator (char*) ;

__attribute__((used)) static PyArrayObject *
array_from_text(PyArray_Descr *dtype, npy_intp num, char *sep, size_t *nread,
                void *stream, next_element next, skip_separator skip_sep,
                void *stream_data)
{
    PyArrayObject *r;
    npy_intp i;
    char *dptr, *clean_sep, *tmp;
    int err = 0;
    int stop_reading_flag;
    npy_intp thisbuf = 0;
    npy_intp size;
    npy_intp bytes, totalbytes;

    size = (num >= 0) ? num : FROM_BUFFER_SIZE;





    Py_INCREF(dtype);

    r = (PyArrayObject *)
        PyArray_NewFromDescr(&PyArray_Type, dtype, 1, &size,
                             ((void*)0), ((void*)0), 0, ((void*)0));
    if (r == ((void*)0)) {
        Py_DECREF(dtype);
        return ((void*)0);
    }

    clean_sep = swab_separator(sep);
    if (clean_sep == ((void*)0)) {
        err = 1;
        goto fail;
    }

    NPY_BEGIN_ALLOW_THREADS;
    totalbytes = bytes = size * dtype->elsize;
    dptr = PyArray_DATA(r);
    for (i = 0; num < 0 || i < num; i++) {
        stop_reading_flag = next(&stream, dptr, dtype, stream_data);
        if (stop_reading_flag < 0) {
            break;
        }
        *nread += 1;
        thisbuf += 1;
        dptr += dtype->elsize;
        if (num < 0 && thisbuf == size) {
            totalbytes += bytes;
            tmp = PyDataMem_RENEW(PyArray_DATA(r), totalbytes);
            if (tmp == ((void*)0)) {
                err = 1;
                break;
            }
            ((PyArrayObject_fields *)r)->data = tmp;
            dptr = tmp + (totalbytes - bytes);
            thisbuf = 0;
        }
        stop_reading_flag = skip_sep(&stream, clean_sep, stream_data);
        if (stop_reading_flag < 0) {
            if (num == i + 1) {

                stop_reading_flag = -1;
            }
            break;
        }
    }
    if (num < 0) {
        const size_t nsize = PyArray_MAX(*nread,1)*dtype->elsize;

        if (nsize != 0) {
            tmp = PyDataMem_RENEW(PyArray_DATA(r), nsize);
            if (tmp == ((void*)0)) {
                err = 1;
            }
            else {
                PyArray_DIMS(r)[0] = *nread;
                ((PyArrayObject_fields *)r)->data = tmp;
            }
        }
    }
    NPY_END_ALLOW_THREADS;

    free(clean_sep);

    if (stop_reading_flag == -2) {
        if (PyErr_Occurred()) {

            Py_DECREF(r);
            Py_DECREF(dtype);
            return ((void*)0);
        }

        if (DEPRECATE(
                "string or file could not be read to its end due to unmatched "
                "data; this will raise a ValueError in the future.") < 0) {
            goto fail;
        }
    }

fail:
    Py_DECREF(dtype);
    if (err == 1) {
        PyErr_NoMemory();
    }
    if (PyErr_Occurred()) {
        Py_DECREF(r);
        return ((void*)0);
    }
    return r;
}
