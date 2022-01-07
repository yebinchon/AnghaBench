
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int PointerGetDatum (char*) ;
 int SET_VARSIZE (char*,int) ;
 int SET_VARSIZE_SHORT (char*,scalar_t__) ;
 scalar_t__ VARATT_SHORT_MAX ;
 int VARHDRSZ ;
 scalar_t__ VARHDRSZ_SHORT ;
 int memcpy (char*,char const*,int) ;
 scalar_t__ palloc (int) ;

__attribute__((used)) static Datum
formTextDatum(const char *data, int datalen)
{
 char *p;

 p = (char *) palloc(datalen + VARHDRSZ);

 if (datalen + VARHDRSZ_SHORT <= VARATT_SHORT_MAX)
 {
  SET_VARSIZE_SHORT(p, datalen + VARHDRSZ_SHORT);
  if (datalen)
   memcpy(p + VARHDRSZ_SHORT, data, datalen);
 }
 else
 {
  SET_VARSIZE(p, datalen + VARHDRSZ);
  memcpy(p + VARHDRSZ, data, datalen);
 }

 return PointerGetDatum(p);
}
