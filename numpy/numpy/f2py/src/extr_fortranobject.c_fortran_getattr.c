
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int* d; } ;
struct TYPE_8__ {char* name; int rank; int * data; int type; TYPE_1__ dims; int (* func ) (int*,int*,int ,int*) ;} ;
struct TYPE_7__ {int len; int * dict; TYPE_3__* defs; } ;
typedef int PyObject ;
typedef TYPE_2__ PyFortranObject ;


 int * F2PyCapsule_FromVoidPtr (void*,int *) ;
 int NPY_ARRAY_FARRAY ;
 int * PyArray_New (int *,int,int*,int ,int *,int *,int ,int ,int *) ;
 int PyArray_Type ;
 int * PyDict_GetItemString (int *,char*) ;
 scalar_t__ PyDict_SetItemString (int *,char*,int *) ;
 int * PyObject_GenericGetAttr (int *,int *) ;
 int PyString_ConcatAndDel (int **,int *) ;
 int * PyString_FromString (char*) ;
 int * PyUnicode_Concat (int *,int *) ;
 int * PyUnicode_FromString (char*) ;
 int Py_DECREF (int *) ;
 int * Py_FindMethod (int ,int *,char*) ;
 int Py_INCREF (int *) ;
 int Py_RETURN_NONE ;
 int * fortran_doc (TYPE_3__) ;
 int fortran_methods ;
 TYPE_3__* save_def ;
 int set_data ;
 int strcmp (char*,char*) ;
 int stub1 (int*,int*,int ,int*) ;

__attribute__((used)) static PyObject *
fortran_getattr(PyFortranObject *fp, char *name) {
    int i,j,k,flag;
    if (fp->dict != ((void*)0)) {
        PyObject *v = PyDict_GetItemString(fp->dict, name);
        if (v != ((void*)0)) {
            Py_INCREF(v);
            return v;
        }
    }
    for (i=0,j=1;i<fp->len && (j=strcmp(name,fp->defs[i].name));i++);
    if (j==0)
        if (fp->defs[i].rank!=-1) {
            if (fp->defs[i].func==((void*)0)) return ((void*)0);
            for(k=0;k<fp->defs[i].rank;++k)
                fp->defs[i].dims.d[k]=-1;
            save_def = &fp->defs[i];
            (*(fp->defs[i].func))(&fp->defs[i].rank,fp->defs[i].dims.d,set_data,&flag);
            if (flag==2)
                k = fp->defs[i].rank + 1;
            else
                k = fp->defs[i].rank;
            if (fp->defs[i].data !=((void*)0)) {
                PyObject *v = PyArray_New(&PyArray_Type, k, fp->defs[i].dims.d,
                                          fp->defs[i].type, ((void*)0), fp->defs[i].data, 0, NPY_ARRAY_FARRAY,
                                          ((void*)0));
                if (v==((void*)0)) return ((void*)0);

                return v;
            } else {
                Py_RETURN_NONE;
            }
        }
    if (strcmp(name,"__dict__")==0) {
        Py_INCREF(fp->dict);
        return fp->dict;
    }
    if (strcmp(name,"__doc__")==0) {
        PyObject *s = PyString_FromString("");
        for (i=0;i<fp->len;i++)
            PyString_ConcatAndDel(&s,fortran_doc(fp->defs[i]));

        if (PyDict_SetItemString(fp->dict, name, s))
            return ((void*)0);
        return s;
    }
    if ((strcmp(name,"_cpointer")==0) && (fp->len==1)) {
        PyObject *cobj = F2PyCapsule_FromVoidPtr((void *)(fp->defs[0].data),((void*)0));
        if (PyDict_SetItemString(fp->dict, name, cobj))
            return ((void*)0);
        return cobj;
    }
    return Py_FindMethod(fortran_methods, (PyObject *)fp, name);

}
