
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int (* mbverifier ) (unsigned char const*,int) ;
struct TYPE_2__ {int (* mbverify ) (unsigned char const*,int) ;} ;


 int Assert (int ) ;
 int IS_HIGHBIT_SET (char const) ;
 int PG_VALID_ENCODING (int) ;
 char* memchr (char const*,int ,int) ;
 int pg_encoding_max_length (int) ;
 TYPE_1__* pg_wchar_table ;
 int report_invalid_encoding (int,char const*,int) ;
 int stub1 (unsigned char const*,int) ;

int
pg_verify_mbstr_len(int encoding, const char *mbstr, int len, bool noError)
{
 mbverifier mbverify;
 int mb_len;

 Assert(PG_VALID_ENCODING(encoding));




 if (pg_encoding_max_length(encoding) <= 1)
 {
  const char *nullpos = memchr(mbstr, 0, len);

  if (nullpos == ((void*)0))
   return len;
  if (noError)
   return -1;
  report_invalid_encoding(encoding, nullpos, 1);
 }


 mbverify = pg_wchar_table[encoding].mbverify;

 mb_len = 0;

 while (len > 0)
 {
  int l;


  if (!IS_HIGHBIT_SET(*mbstr))
  {
   if (*mbstr != '\0')
   {
    mb_len++;
    mbstr++;
    len--;
    continue;
   }
   if (noError)
    return -1;
   report_invalid_encoding(encoding, mbstr, len);
  }

  l = (*mbverify) ((const unsigned char *) mbstr, len);

  if (l < 0)
  {
   if (noError)
    return -1;
   report_invalid_encoding(encoding, mbstr, len);
  }

  mbstr += l;
  len -= l;
  mb_len++;
 }
 return mb_len;
}
