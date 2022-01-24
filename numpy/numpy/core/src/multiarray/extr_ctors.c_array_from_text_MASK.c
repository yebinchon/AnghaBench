#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int (* skip_separator ) (void**,char*,void*) ;
typedef  scalar_t__ npy_intp ;
typedef  int (* next_element ) (void**,char*,TYPE_1__*,void*) ;
struct TYPE_14__ {char* data; } ;
struct TYPE_13__ {scalar_t__ elsize; } ;
typedef  TYPE_1__ PyArray_Descr ;
typedef  TYPE_3__ PyArrayObject_fields ;
typedef  TYPE_1__ PyArrayObject ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FROM_BUFFER_SIZE ; 
 int /*<<< orphan*/  NPY_BEGIN_ALLOW_THREADS ; 
 int /*<<< orphan*/  NPY_END_ALLOW_THREADS ; 
 char* FUNC1 (TYPE_1__*) ; 
 size_t* FUNC2 (TYPE_1__*) ; 
 size_t FUNC3 (size_t,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PyArray_Type ; 
 char* FUNC5 (char*,size_t const) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* FUNC11 (char*) ; 

__attribute__((used)) static PyArrayObject *
FUNC12(PyArray_Descr *dtype, npy_intp num, char *sep, size_t *nread,
                void *stream, next_element next, skip_separator skip_sep,
                void *stream_data)
{
    PyArrayObject *r;
    npy_intp i;
    char *dptr, *clean_sep, *tmp;
    int err = 0;
    int stop_reading_flag;  /* -1 indicates end reached; -2 a parsing error */
    npy_intp thisbuf = 0;
    npy_intp size;
    npy_intp bytes, totalbytes;

    size = (num >= 0) ? num : FROM_BUFFER_SIZE;

    /*
     * Array creation may move sub-array dimensions from the dtype to array
     * dimensions, so we need to use the original dtype when reading.
     */
    FUNC9(dtype);

    r = (PyArrayObject *)
        FUNC4(&PyArray_Type, dtype, 1, &size,
                             NULL, NULL, 0, NULL);
    if (r == NULL) {
        FUNC8(dtype);
        return NULL;
    }

    clean_sep = FUNC11(sep);
    if (clean_sep == NULL) {
        err = 1;
        goto fail;
    }

    NPY_BEGIN_ALLOW_THREADS;
    totalbytes = bytes = size * dtype->elsize;
    dptr = FUNC1(r);
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
            tmp = FUNC5(FUNC1(r), totalbytes);
            if (tmp == NULL) {
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
                /* if we read as much as requested sep is optional */
                stop_reading_flag = -1;
            }
            break;
        }
    }
    if (num < 0) {
        const size_t nsize = FUNC3(*nread,1)*dtype->elsize;

        if (nsize != 0) {
            tmp = FUNC5(FUNC1(r), nsize);
            if (tmp == NULL) {
                err = 1;
            }
            else {
                FUNC2(r)[0] = *nread;
                ((PyArrayObject_fields *)r)->data = tmp;
            }
        }
    }
    NPY_END_ALLOW_THREADS;

    FUNC10(clean_sep);

    if (stop_reading_flag == -2) {
        if (FUNC7()) {
            /* If an error is already set (unlikely), do not create new one */
            FUNC8(r);
            FUNC8(dtype);
            return NULL;
        }
        /* 2019-09-12, NumPy 1.18 */
        if (FUNC0(
                "string or file could not be read to its end due to unmatched "
                "data; this will raise a ValueError in the future.") < 0) {
            goto fail;
        }
    }

fail:
    FUNC8(dtype);
    if (err == 1) {
        FUNC6();
    }
    if (FUNC7()) {
        FUNC8(r);
        return NULL;
    }
    return r;
}