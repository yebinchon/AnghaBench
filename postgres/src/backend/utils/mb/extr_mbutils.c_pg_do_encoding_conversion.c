
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;
typedef int Oid ;


 int CStringGetDatum (unsigned char*) ;
 int CurrentMemoryContext ;
 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERRCODE_UNDEFINED_FUNCTION ;
 int ERROR ;
 int FindDefaultConversionProc (int,int) ;
 int Int32GetDatum (int) ;
 int IsTransactionState () ;
 int MAX_CONVERSION_GROWTH ;
 int MaxAllocHugeSize ;
 int MaxAllocSize ;
 scalar_t__ MemoryContextAllocHuge (int ,int) ;
 int OidFunctionCall5 (int ,int ,int ,int ,int ,int ) ;
 int OidIsValid (int ) ;
 int PG_SQL_ASCII ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,int) ;
 int errmsg (char*,...) ;
 int pg_encoding_to_char (int) ;
 int pg_verify_mbstr (int,char const*,int,int) ;
 scalar_t__ repalloc (unsigned char*,int) ;
 int strlen (char*) ;

unsigned char *
pg_do_encoding_conversion(unsigned char *src, int len,
        int src_encoding, int dest_encoding)
{
 unsigned char *result;
 Oid proc;

 if (len <= 0)
  return src;

 if (src_encoding == dest_encoding)
  return src;

 if (dest_encoding == PG_SQL_ASCII)
  return src;

 if (src_encoding == PG_SQL_ASCII)
 {

  (void) pg_verify_mbstr(dest_encoding, (const char *) src, len, 0);
  return src;
 }

 if (!IsTransactionState())
  elog(ERROR, "cannot perform encoding conversion outside a transaction");

 proc = FindDefaultConversionProc(src_encoding, dest_encoding);
 if (!OidIsValid(proc))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_FUNCTION),
     errmsg("default conversion function for encoding \"%s\" to \"%s\" does not exist",
      pg_encoding_to_char(src_encoding),
      pg_encoding_to_char(dest_encoding))));
 if ((Size) len >= (MaxAllocHugeSize / (Size) MAX_CONVERSION_GROWTH))
  ereport(ERROR,
    (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
     errmsg("out of memory"),
     errdetail("String of %d bytes is too long for encoding conversion.",
         len)));

 result = (unsigned char *)
  MemoryContextAllocHuge(CurrentMemoryContext,
          (Size) len * MAX_CONVERSION_GROWTH + 1);

 OidFunctionCall5(proc,
      Int32GetDatum(src_encoding),
      Int32GetDatum(dest_encoding),
      CStringGetDatum(src),
      CStringGetDatum(result),
      Int32GetDatum(len));






 if (len > 1000000)
 {
  Size resultlen = strlen((char *) result);

  if (resultlen >= MaxAllocSize)
   ereport(ERROR,
     (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
      errmsg("out of memory"),
      errdetail("String of %d bytes is too long for encoding conversion.",
          len)));

  result = (unsigned char *) repalloc(result, resultlen + 1);
 }

 return result;
}
