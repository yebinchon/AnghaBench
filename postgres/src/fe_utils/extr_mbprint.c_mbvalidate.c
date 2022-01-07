
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PG_UTF8 ;
 int mb_utf_validate (unsigned char*) ;

unsigned char *
mbvalidate(unsigned char *pwcs, int encoding)
{
 if (encoding == PG_UTF8)
  mb_utf_validate(pwcs);
 else
 {




 }

 return pwcs;
}
