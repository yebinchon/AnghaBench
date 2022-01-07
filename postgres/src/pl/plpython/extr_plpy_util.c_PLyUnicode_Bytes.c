
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int ERROR ;
 scalar_t__ GetDatabaseEncoding () ;
 int PG_CATCH () ;
 int PG_END_TRY () ;
 int PG_RE_THROW () ;
 int PG_TRY () ;
 scalar_t__ PG_UTF8 ;
 int PLy_elog (int ,char*) ;
 char* PyBytes_AsString (int *) ;
 int * PyBytes_FromStringAndSize (char*,int ) ;
 int * PyUnicode_AsUTF8String (int *) ;
 int Py_DECREF (int *) ;
 int pfree (char*) ;
 char* pg_any_to_server (char*,int ,scalar_t__) ;
 int strlen (char*) ;

PyObject *
PLyUnicode_Bytes(PyObject *unicode)
{
 PyObject *bytes,
      *rv;
 char *utf8string,
      *encoded;


 bytes = PyUnicode_AsUTF8String(unicode);
 if (bytes == ((void*)0))
  PLy_elog(ERROR, "could not convert Python Unicode object to bytes");

 utf8string = PyBytes_AsString(bytes);
 if (utf8string == ((void*)0))
 {
  Py_DECREF(bytes);
  PLy_elog(ERROR, "could not extract bytes from encoded string");
 }
 if (GetDatabaseEncoding() != PG_UTF8)
 {
  PG_TRY();
  {
   encoded = pg_any_to_server(utf8string,
            strlen(utf8string),
            PG_UTF8);
  }
  PG_CATCH();
  {
   Py_DECREF(bytes);
   PG_RE_THROW();
  }
  PG_END_TRY();
 }
 else
  encoded = utf8string;


 rv = PyBytes_FromStringAndSize(encoded, strlen(encoded));


 if (utf8string != encoded)
  pfree(encoded);

 Py_DECREF(bytes);
 return rv;
}
