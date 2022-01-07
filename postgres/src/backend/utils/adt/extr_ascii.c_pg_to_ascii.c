
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int PG_LATIN1 ;
 int PG_LATIN2 ;
 int PG_LATIN9 ;
 int PG_WIN1250 ;
 int RANGE_128 ;
 int RANGE_160 ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int pg_encoding_to_char (int) ;

__attribute__((used)) static void
pg_to_ascii(unsigned char *src, unsigned char *src_end, unsigned char *dest, int enc)
{
 unsigned char *x;
 const unsigned char *ascii;
 int range;







 if (enc == PG_LATIN1)
 {



  ascii = (const unsigned char *) "  cL Y  \"Ca  -R     'u .,      ?AAAAAAACEEEEIIII NOOOOOxOUUUUYTBaaaaaaaceeeeiiii nooooo/ouuuuyty";
  range = 160;
 }
 else if (enc == PG_LATIN2)
 {



  ascii = (const unsigned char *) " A L LS \"SSTZ-ZZ a,l'ls ,sstz\"zzRAAAALCCCEEEEIIDDNNOOOOxRUUUUYTBraaaalccceeeeiiddnnoooo/ruuuuyt.";
  range = 160;
 }
 else if (enc == PG_LATIN9)
 {



  ascii = (const unsigned char *) "  cL YS sCa  -R     Zu .z   EeY?AAAAAAACEEEEIIII NOOOOOxOUUUUYTBaaaaaaaceeeeiiii nooooo/ouuuuyty";
  range = 160;
 }
 else if (enc == PG_WIN1250)
 {



  ascii = (const unsigned char *) "  ' \"    %S<STZZ `'\"\".--  s>stzz   L A  \"CS  -RZ  ,l'u .,as L\"lzRAAAALCCCEEEEIIDDNNOOOOxRUUUUYTBraaaalccceeeeiiddnnoooo/ruuuuyt ";
  range = 128;
 }
 else
 {
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("encoding conversion from %s to ASCII not supported",
      pg_encoding_to_char(enc))));
  return;
 }




 for (x = src; x < src_end; x++)
 {
  if (*x < 128)
   *dest++ = *x;
  else if (*x < range)
   *dest++ = ' ';
  else
   *dest++ = ascii[*x - range];
 }
}
