
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {char* doc; int rank; int * data; int type; int name; } ;
struct TYPE_7__ {int type; } ;
typedef int Py_ssize_t ;
typedef int PyObject ;
typedef TYPE_1__ PyArray_Descr ;
typedef TYPE_2__ FortranDataDef ;


 TYPE_1__* PyArray_DescrFromType (int ) ;
 int * PyErr_NoMemory () ;
 int PyMem_Free (char*) ;
 scalar_t__ PyMem_Malloc (int) ;
 int PyOS_snprintf (char*,int,char*,int ) ;
 int * PyString_FromStringAndSize (char*,int) ;
 int * PyUnicode_FromStringAndSize (char*,int) ;
 int Py_DECREF (TYPE_1__*) ;
 int format_def (char*,int,TYPE_2__) ;
 int fprintf (int ,char*,int,int) ;
 int memcpy (char*,char*,int) ;
 int stderr ;
 int strlen (char*) ;

__attribute__((used)) static PyObject *
fortran_doc(FortranDataDef def)
{
    char *buf, *p;
    PyObject *s = ((void*)0);
    Py_ssize_t n, origsize, size = 100;

    if (def.doc != ((void*)0)) {
        size += strlen(def.doc);
    }
    origsize = size;
    buf = p = (char *)PyMem_Malloc(size);
    if (buf == ((void*)0)) {
        return PyErr_NoMemory();
    }

    if (def.rank == -1) {
        if (def.doc) {
            n = strlen(def.doc);
            if (n > size) {
                goto fail;
            }
            memcpy(p, def.doc, n);
            p += n;
            size -= n;
        }
        else {
            n = PyOS_snprintf(p, size, "%s - no docs available", def.name);
            if (n < 0 || n >= size) {
                goto fail;
            }
            p += n;
            size -= n;
        }
    }
    else {
        PyArray_Descr *d = PyArray_DescrFromType(def.type);
        n = PyOS_snprintf(p, size, "'%c'-", d->type);
        Py_DECREF(d);
        if (n < 0 || n >= size) {
            goto fail;
        }
        p += n;
        size -= n;

        if (def.data == ((void*)0)) {
            n = format_def(p, size, def) == -1;
            if (n < 0) {
                goto fail;
            }
            p += n;
            size -= n;
        }
        else if (def.rank > 0) {
            n = format_def(p, size, def);
            if (n < 0) {
                goto fail;
            }
            p += n;
            size -= n;
        }
        else {
            n = strlen("scalar");
            if (size < n) {
                goto fail;
            }
            memcpy(p, "scalar", n);
            p += n;
            size -= n;
        }
    }
    if (size <= 1) {
        goto fail;
    }
    *p++ = '\n';
    size--;





    s = PyString_FromStringAndSize(buf, p - buf);


    PyMem_Free(buf);
    return s;

 fail:
    fprintf(stderr, "fortranobject.c: fortran_doc: len(p)=%zd>%zd=size:"
                    " too long docstring required, increase size\n",
            p - buf, origsize);
    PyMem_Free(buf);
    return ((void*)0);
}
