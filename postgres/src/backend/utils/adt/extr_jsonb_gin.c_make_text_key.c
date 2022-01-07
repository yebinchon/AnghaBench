
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int text ;
typedef int hashbuf ;
typedef int Datum ;


 int DatumGetUInt32 (int ) ;
 char JGINFLAG_HASHED ;
 int JGIN_MAXLENGTH ;
 int PointerGetDatum (int *) ;
 int SET_VARSIZE (int *,scalar_t__) ;
 char* VARDATA (int *) ;
 scalar_t__ VARHDRSZ ;
 int hash_any (unsigned char const*,int) ;
 int memcpy (char*,char const*,int) ;
 scalar_t__ palloc (scalar_t__) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static Datum
make_text_key(char flag, const char *str, int len)
{
 text *item;
 char hashbuf[10];

 if (len > JGIN_MAXLENGTH)
 {
  uint32 hashval;

  hashval = DatumGetUInt32(hash_any((const unsigned char *) str, len));
  snprintf(hashbuf, sizeof(hashbuf), "%08x", hashval);
  str = hashbuf;
  len = 8;
  flag |= JGINFLAG_HASHED;
 }






 item = (text *) palloc(VARHDRSZ + len + 1);
 SET_VARSIZE(item, VARHDRSZ + len + 1);

 *VARDATA(item) = flag;

 memcpy(VARDATA(item) + 1, str, len);

 return PointerGetDatum(item);
}
