#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int* d; } ;
struct TYPE_8__ {char* name; int rank; int /*<<< orphan*/ * data; int /*<<< orphan*/  type; TYPE_1__ dims; int /*<<< orphan*/  (* func ) (int*,int*,int /*<<< orphan*/ ,int*) ;} ;
struct TYPE_7__ {int len; int /*<<< orphan*/ * dict; TYPE_3__* defs; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_2__ PyFortranObject ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NPY_ARRAY_FARRAY ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PyArray_Type ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Py_RETURN_NONE ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_3__) ; 
 int /*<<< orphan*/  fortran_methods ; 
 TYPE_3__* save_def ; 
 int /*<<< orphan*/  set_data ; 
 int FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int*,int*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static PyObject *
FUNC15(PyFortranObject *fp, char *name) {
    int i,j,k,flag;
    if (fp->dict != NULL) {
        PyObject *v = FUNC2(fp->dict, name);
        if (v != NULL) {
            FUNC11(v);
            return v;
        }
    }
    for (i=0,j=1;i<fp->len && (j=FUNC13(name,fp->defs[i].name));i++);
    if (j==0)
        if (fp->defs[i].rank!=-1) {                   /* F90 allocatable array */
            if (fp->defs[i].func==NULL) return NULL;
            for(k=0;k<fp->defs[i].rank;++k)
                fp->defs[i].dims.d[k]=-1;
            save_def = &fp->defs[i];
            (*(fp->defs[i].func))(&fp->defs[i].rank,fp->defs[i].dims.d,set_data,&flag);
            if (flag==2)
                k = fp->defs[i].rank + 1;
            else
                k = fp->defs[i].rank;
            if (fp->defs[i].data !=NULL) {              /* array is allocated */
                PyObject *v = FUNC1(&PyArray_Type, k, fp->defs[i].dims.d,
                                          fp->defs[i].type, NULL, fp->defs[i].data, 0, NPY_ARRAY_FARRAY,
                                          NULL);
                if (v==NULL) return NULL;
                /* Py_INCREF(v); */
                return v;
            } else {                                    /* array is not allocated */
                Py_RETURN_NONE;
            }
        }
    if (FUNC13(name,"__dict__")==0) {
        FUNC11(fp->dict);
        return fp->dict;
    }
    if (FUNC13(name,"__doc__")==0) {
#if PY_VERSION_HEX >= 0x03000000
        PyObject *s = PyUnicode_FromString(""), *s2, *s3;
        for (i=0;i<fp->len;i++) {
            s2 = fortran_doc(fp->defs[i]);
            s3 = PyUnicode_Concat(s, s2);
            Py_DECREF(s2);
            Py_DECREF(s);
            s = s3;
        }
#else
        PyObject *s = FUNC6("");
        for (i=0;i<fp->len;i++)
            FUNC5(&s,FUNC12(fp->defs[i]));
#endif
        if (FUNC3(fp->dict, name, s))
            return NULL;
        return s;
    }
    if ((FUNC13(name,"_cpointer")==0) && (fp->len==1)) {
        PyObject *cobj = FUNC0((void *)(fp->defs[0].data),NULL);
        if (FUNC3(fp->dict, name, cobj))
            return NULL;
        return cobj;
    }
#if PY_VERSION_HEX >= 0x03000000
    if (1) {
        PyObject *str, *ret;
        str = PyUnicode_FromString(name);
        ret = PyObject_GenericGetAttr((PyObject *)fp, str);
        Py_DECREF(str);
        return ret;
    }
#else
    return FUNC10(fortran_methods, (PyObject *)fp, name);
#endif
}