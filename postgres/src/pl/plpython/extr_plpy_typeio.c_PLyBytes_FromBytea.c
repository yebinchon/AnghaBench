
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef int PyObject ;
typedef int PLyDatumToOb ;
typedef int Datum ;


 int * DatumGetByteaPP (int ) ;
 int * PyBytes_FromStringAndSize (char*,size_t) ;
 char* VARDATA_ANY (int *) ;
 size_t VARSIZE_ANY_EXHDR (int *) ;

__attribute__((used)) static PyObject *
PLyBytes_FromBytea(PLyDatumToOb *arg, Datum d)
{
 text *txt = DatumGetByteaPP(d);
 char *str = VARDATA_ANY(txt);
 size_t size = VARSIZE_ANY_EXHDR(txt);

 return PyBytes_FromStringAndSize(str, size);
}
