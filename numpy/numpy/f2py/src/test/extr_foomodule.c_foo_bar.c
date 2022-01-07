
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int PyArg_ParseTupleAndKeywords (int *,int *,char*,char**) ;
 int * Py_BuildValue (char*) ;
 void stub1 () ;

__attribute__((used)) static PyObject *foo_bar(PyObject *capi_self, PyObject *capi_args,
                         PyObject *capi_keywds, void (*f2py_func)()) {
    PyObject *capi_buildvalue = ((void*)0);
    static char *capi_kwlist[] = {((void*)0)};
    if (!PyArg_ParseTupleAndKeywords(capi_args,capi_keywds, "|:foo.bar", capi_kwlist))


        goto capi_fail;
    (*f2py_func)();
    capi_buildvalue = Py_BuildValue("");
 capi_fail:
    return capi_buildvalue;
}
