
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int MAKE_SQLSTATE (char,char,char,char,char) ;
 int * PyObject_GetAttrString (int *,char*) ;
 char* PyString_AsString (int *) ;
 int Py_DECREF (int *) ;
 int strlen (char*) ;
 int strspn (char*,char*) ;

__attribute__((used)) static void
PLy_get_sqlerrcode(PyObject *exc, int *sqlerrcode)
{
 PyObject *sqlstate;
 char *buffer;

 sqlstate = PyObject_GetAttrString(exc, "sqlstate");
 if (sqlstate == ((void*)0))
  return;

 buffer = PyString_AsString(sqlstate);
 if (strlen(buffer) == 5 &&
  strspn(buffer, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ") == 5)
 {
  *sqlerrcode = MAKE_SQLSTATE(buffer[0], buffer[1], buffer[2],
         buffer[3], buffer[4]);
 }

 Py_DECREF(sqlstate);
}
