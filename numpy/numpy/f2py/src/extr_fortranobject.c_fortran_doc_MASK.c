#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* doc; int rank; int /*<<< orphan*/ * data; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {int /*<<< orphan*/  type; } ;
typedef  int Py_ssize_t ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ PyArray_Descr ;
typedef  TYPE_2__ FortranDataDef ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (char*,int) ; 
 int /*<<< orphan*/ * FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (char*,int,TYPE_2__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC11 (char*) ; 

__attribute__((used)) static PyObject *
FUNC12(FortranDataDef def)
{
    char *buf, *p;
    PyObject *s = NULL;
    Py_ssize_t n, origsize, size = 100;

    if (def.doc != NULL) {
        size += FUNC11(def.doc);
    }
    origsize = size;
    buf = p = (char *)FUNC3(size);
    if (buf == NULL) {
        return FUNC1();
    }

    if (def.rank == -1) {
        if (def.doc) {
            n = FUNC11(def.doc);
            if (n > size) {
                goto fail;
            }
            FUNC10(p, def.doc, n);
            p += n;
            size -= n;
        }
        else {
            n = FUNC4(p, size, "%s - no docs available", def.name);
            if (n < 0 || n >= size) {
                goto fail;
            }
            p += n;
            size -= n;
        }
    }
    else {
        PyArray_Descr *d = FUNC0(def.type);
        n = FUNC4(p, size, "'%c'-", d->type);
        FUNC7(d);
        if (n < 0 || n >= size) {
            goto fail;
        }
        p += n;
        size -= n;

        if (def.data == NULL) {
            n = FUNC8(p, size, def) == -1;
            if (n < 0) {
                goto fail;
            }
            p += n;
            size -= n;
        }
        else if (def.rank > 0) {
            n = FUNC8(p, size, def);
            if (n < 0) {
                goto fail;
            }
            p += n;
            size -= n;
        }
        else {
            n = FUNC11("scalar");
            if (size < n) {
                goto fail;
            }
            FUNC10(p, "scalar", n);
            p += n;
            size -= n;
        }
    }
    if (size <= 1) {
        goto fail;
    }
    *p++ = '\n';
    size--;

    /* p now points one beyond the last character of the string in buf */
#if PY_VERSION_HEX >= 0x03000000
    s = PyUnicode_FromStringAndSize(buf, p - buf);
#else
    s = FUNC5(buf, p - buf);
#endif

    FUNC2(buf);
    return s;

 fail:
    FUNC9(stderr, "fortranobject.c: fortran_doc: len(p)=%d>%d=size:"
                    " too long docstring required, increase size\n",
            p - buf, origsize);
    FUNC2(buf);
    return NULL;
}