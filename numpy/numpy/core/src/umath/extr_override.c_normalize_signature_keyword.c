
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int PyDict_DelItemString (int *,char*) ;
 int * PyDict_GetItemString (int *,char*) ;
 int PyDict_SetItemString (int *,char*,int *) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_TypeError ;

__attribute__((used)) static int
normalize_signature_keyword(PyObject *normal_kwds)
{
    PyObject* obj = PyDict_GetItemString(normal_kwds, "sig");
    if (obj != ((void*)0)) {
        if (PyDict_GetItemString(normal_kwds, "signature")) {
            PyErr_SetString(PyExc_TypeError,
                            "cannot specify both 'sig' and 'signature'");
            return -1;
        }




        PyDict_SetItemString(normal_kwds, "signature", obj);
        PyDict_DelItemString(normal_kwds, "sig");
    }
    return 0;
}
