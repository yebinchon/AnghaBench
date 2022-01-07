
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int ERRCODE_DATATYPE_MISMATCH ;
 int ERROR ;
 int * PLyUnicode_Bytes (int *) ;
 int PLy_elog (int ,char*) ;
 int PyBytes_AsString (int *) ;
 size_t PyBytes_Size (int *) ;
 scalar_t__ PyFloat_Check (int *) ;
 int * PyObject_Repr (int *) ;
 int * PyObject_Str (int *) ;
 scalar_t__ PyUnicode_Check (int *) ;
 int Py_XDECREF (int *) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int pg_verifymbstr (char*,size_t,int) ;
 char* pstrdup (int ) ;
 size_t strlen (char*) ;

char *
PLyObject_AsString(PyObject *plrv)
{
 PyObject *plrv_bo;
 char *plrv_sc;
 size_t plen;
 size_t slen;

 if (PyUnicode_Check(plrv))
  plrv_bo = PLyUnicode_Bytes(plrv);
 else if (PyFloat_Check(plrv))
 {







  plrv_bo = PyObject_Repr(plrv);

 }
 else
 {






  plrv_bo = PyObject_Str(plrv);

 }
 if (!plrv_bo)
  PLy_elog(ERROR, "could not create string representation of Python object");

 plrv_sc = pstrdup(PyBytes_AsString(plrv_bo));
 plen = PyBytes_Size(plrv_bo);
 slen = strlen(plrv_sc);

 Py_XDECREF(plrv_bo);

 if (slen < plen)
  ereport(ERROR,
    (errcode(ERRCODE_DATATYPE_MISMATCH),
     errmsg("could not convert Python object into cstring: Python string representation appears to contain null bytes")));
 else if (slen > plen)
  elog(ERROR, "could not convert Python object into cstring: Python string longer than reported length");
 pg_verifymbstr(plrv_sc, slen, 0);

 return plrv_sc;
}
