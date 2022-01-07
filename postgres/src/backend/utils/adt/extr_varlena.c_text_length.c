
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef int int32 ;
typedef int Datum ;


 int * DatumGetTextPP (int ) ;
 int PG_RETURN_INT32 (scalar_t__) ;
 int VARDATA_ANY (int *) ;
 scalar_t__ VARHDRSZ ;
 int VARSIZE_ANY_EXHDR (int *) ;
 int pg_database_encoding_max_length () ;
 scalar_t__ pg_mbstrlen_with_len (int ,int ) ;
 scalar_t__ toast_raw_datum_size (int ) ;

__attribute__((used)) static int32
text_length(Datum str)
{

 if (pg_database_encoding_max_length() == 1)
  PG_RETURN_INT32(toast_raw_datum_size(str) - VARHDRSZ);
 else
 {
  text *t = DatumGetTextPP(str);

  PG_RETURN_INT32(pg_mbstrlen_with_len(VARDATA_ANY(t),
            VARSIZE_ANY_EXHDR(t)));
 }
}
