
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int npy_intp ;
struct TYPE_5__ {int* d; } ;
struct TYPE_7__ {int rank; int* data; int (* func ) (int*,int*,int ,int*) ;TYPE_1__ dims; int type; int name; } ;
struct TYPE_6__ {int len; int * dict; TYPE_3__* defs; } ;
typedef int PyObject ;
typedef TYPE_2__ PyFortranObject ;
typedef int PyArrayObject ;


 int F2PY_INTENT_IN ;
 int F2PY_MAX_DIMS ;
 int* PyArray_DATA (int *) ;
 int* PyArray_DIMS (int *) ;
 int PyArray_ITEMSIZE (int *) ;
 int PyArray_MultiplyList (int*,int ) ;
 int PyArray_NDIM (int *) ;
 int PyDict_DelItemString (int *,char*) ;
 int * PyDict_New () ;
 int PyDict_SetItemString (int *,char*,int *) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_AttributeError ;
 int Py_DECREF (int *) ;
 int * Py_None ;
 int * array_from_pyobj (int ,int*,int,int ,int *) ;
 int * memcpy (int*,int*,int) ;
 TYPE_3__* save_def ;
 int set_data ;
 int strcmp (char*,int ) ;
 int stub1 (int*,int*,int ,int*) ;
 int stub2 (int*,int*,int ,int*) ;

__attribute__((used)) static int
fortran_setattr(PyFortranObject *fp, char *name, PyObject *v) {
    int i,j,flag;
    PyArrayObject *arr = ((void*)0);
    for (i=0,j=1;i<fp->len && (j=strcmp(name,fp->defs[i].name));i++);
    if (j==0) {
        if (fp->defs[i].rank==-1) {
            PyErr_SetString(PyExc_AttributeError,"over-writing fortran routine");
            return -1;
        }
        if (fp->defs[i].func!=((void*)0)) {
            npy_intp dims[F2PY_MAX_DIMS];
            int k;
            save_def = &fp->defs[i];
            if (v!=Py_None) {


                for(k=0;k<fp->defs[i].rank;k++) dims[k]=-1;
                if ((arr = array_from_pyobj(fp->defs[i].type,dims,fp->defs[i].rank,F2PY_INTENT_IN,v))==((void*)0))
                    return -1;
                (*(fp->defs[i].func))(&fp->defs[i].rank,PyArray_DIMS(arr),set_data,&flag);
            } else {
                for(k=0;k<fp->defs[i].rank;k++) dims[k]=0;
                (*(fp->defs[i].func))(&fp->defs[i].rank,dims,set_data,&flag);
                for(k=0;k<fp->defs[i].rank;k++) dims[k]=-1;
            }
            memcpy(fp->defs[i].dims.d,dims,fp->defs[i].rank*sizeof(npy_intp));
        } else {
            if ((arr = array_from_pyobj(fp->defs[i].type,fp->defs[i].dims.d,fp->defs[i].rank,F2PY_INTENT_IN,v))==((void*)0))
                return -1;
        }
        if (fp->defs[i].data!=((void*)0)) {
            npy_intp s = PyArray_MultiplyList(fp->defs[i].dims.d,PyArray_NDIM(arr));
            if (s==-1)
                s = PyArray_MultiplyList(PyArray_DIMS(arr),PyArray_NDIM(arr));
            if (s<0 ||
                (memcpy(fp->defs[i].data,PyArray_DATA(arr),s*PyArray_ITEMSIZE(arr)))==((void*)0)) {
                if ((PyObject*)arr!=v) {
                    Py_DECREF(arr);
                }
                return -1;
            }
            if ((PyObject*)arr!=v) {
                Py_DECREF(arr);
            }
        } else return (fp->defs[i].func==((void*)0)?-1:0);
        return 0;
    }
    if (fp->dict == ((void*)0)) {
        fp->dict = PyDict_New();
        if (fp->dict == ((void*)0))
            return -1;
    }
    if (v == ((void*)0)) {
        int rv = PyDict_DelItemString(fp->dict, name);
        if (rv < 0)
            PyErr_SetString(PyExc_AttributeError,"delete non-existing fortran attribute");
        return rv;
    }
    else
        return PyDict_SetItemString(fp->dict, name, v);
}
