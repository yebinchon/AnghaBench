
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int * PLyUnicode_Bytes (int *) ;
 int PyBytes_AsString (int *) ;
 int Py_XDECREF (int *) ;
 char* pstrdup (int ) ;

char *
PLyUnicode_AsString(PyObject *unicode)
{
 PyObject *o = PLyUnicode_Bytes(unicode);
 char *rv = pstrdup(PyBytes_AsString(o));

 Py_XDECREF(o);
 return rv;
}
