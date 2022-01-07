
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef int int32 ;
typedef int Datum ;


 scalar_t__ DatumGetPointer (int ) ;
 int * DatumGetTextPSlice (int ,int,int) ;
 int ERRCODE_SUBSTRING_ERROR ;
 int ERROR ;
 int Max (int,int) ;
 int Min (int,int) ;
 int SET_VARSIZE (int *,scalar_t__) ;
 scalar_t__ VARATT_IS_COMPRESSED (scalar_t__) ;
 scalar_t__ VARATT_IS_EXTERNAL (scalar_t__) ;
 int VARDATA (int *) ;
 char* VARDATA_ANY (int *) ;
 scalar_t__ VARHDRSZ ;
 scalar_t__ VARSIZE_ANY_EXHDR (int *) ;
 int * cstring_to_text (char*) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int memcpy (int ,char*,int) ;
 scalar_t__ palloc (scalar_t__) ;
 int pfree (int *) ;
 int pg_database_encoding_max_length () ;
 int pg_mblen (char*) ;
 int pg_mbstrlen_with_len (char*,scalar_t__) ;

__attribute__((used)) static text *
text_substring(Datum str, int32 start, int32 length, bool length_not_specified)
{
 int32 eml = pg_database_encoding_max_length();
 int32 S = start;
 int32 S1;
 int32 L1;


 if (eml == 1)
 {
  S1 = Max(S, 1);

  if (length_not_specified)

   L1 = -1;
  else
  {

   int E = S + length;





   if (E < S)
    ereport(ERROR,
      (errcode(ERRCODE_SUBSTRING_ERROR),
       errmsg("negative substring length not allowed")));






   if (E < 1)
    return cstring_to_text("");

   L1 = E - S1;
  }






  return DatumGetTextPSlice(str, S1 - 1, L1);
 }
 else if (eml > 1)
 {





  int32 slice_start;
  int32 slice_size;
  int32 slice_strlen;
  text *slice;
  int32 E1;
  int32 i;
  char *p;
  char *s;
  text *ret;





  S1 = Max(S, 1);






  slice_start = 0;

  if (length_not_specified)

   slice_size = L1 = -1;
  else
  {
   int E = S + length;





   if (E < S)
    ereport(ERROR,
      (errcode(ERRCODE_SUBSTRING_ERROR),
       errmsg("negative substring length not allowed")));






   if (E < 1)
    return cstring_to_text("");





   L1 = E - S1;





   slice_size = (S1 + L1) * eml;
  }





  if (VARATT_IS_COMPRESSED(DatumGetPointer(str)) ||
   VARATT_IS_EXTERNAL(DatumGetPointer(str)))
   slice = DatumGetTextPSlice(str, slice_start, slice_size);
  else
   slice = (text *) DatumGetPointer(str);


  if (VARSIZE_ANY_EXHDR(slice) == 0)
  {
   if (slice != (text *) DatumGetPointer(str))
    pfree(slice);
   return cstring_to_text("");
  }


  slice_strlen = pg_mbstrlen_with_len(VARDATA_ANY(slice),
           VARSIZE_ANY_EXHDR(slice));





  if (S1 > slice_strlen)
  {
   if (slice != (text *) DatumGetPointer(str))
    pfree(slice);
   return cstring_to_text("");
  }





  if (L1 > -1)
   E1 = Min(S1 + L1, slice_start + 1 + slice_strlen);
  else
   E1 = slice_start + 1 + slice_strlen;




  p = VARDATA_ANY(slice);
  for (i = 0; i < S1 - 1; i++)
   p += pg_mblen(p);


  s = p;





  for (i = S1; i < E1; i++)
   p += pg_mblen(p);

  ret = (text *) palloc(VARHDRSZ + (p - s));
  SET_VARSIZE(ret, VARHDRSZ + (p - s));
  memcpy(VARDATA(ret), s, (p - s));

  if (slice != (text *) DatumGetPointer(str))
   pfree(slice);

  return ret;
 }
 else
  elog(ERROR, "invalid backend encoding: encoding max length < 1");


 return ((void*)0);
}
