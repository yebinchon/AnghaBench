
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_INVALID_TEXT_REPRESENTATION ;
 int ERROR ;
 int VAL (char const) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;

__attribute__((used)) static unsigned
esc_decode(const char *src, unsigned srclen, char *dst)
{
 const char *end = src + srclen;
 char *rp = dst;
 int len = 0;

 while (src < end)
 {
  if (src[0] != '\\')
   *rp++ = *src++;
  else if (src + 3 < end &&
     (src[1] >= '0' && src[1] <= '3') &&
     (src[2] >= '0' && src[2] <= '7') &&
     (src[3] >= '0' && src[3] <= '7'))
  {
   int val;

   val = VAL(src[1]);
   val <<= 3;
   val += VAL(src[2]);
   val <<= 3;
   *rp++ = val + VAL(src[3]);
   src += 4;
  }
  else if (src + 1 < end &&
     (src[1] == '\\'))
  {
   *rp++ = '\\';
   src += 2;
  }
  else
  {




   ereport(ERROR,
     (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
      errmsg("invalid input syntax for type %s", "bytea")));
  }

  len++;
 }

 return len;
}
