
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zic_t ;


 int MINSPERHOUR ;
 int SECSPERMIN ;
 int _ (char*) ;
 int error (int ) ;

__attribute__((used)) static char const *
abbroffset(char *buf, zic_t offset)
{
 char sign = '+';
 int seconds,
    minutes;

 if (offset < 0)
 {
  offset = -offset;
  sign = '-';
 }

 seconds = offset % SECSPERMIN;
 offset /= SECSPERMIN;
 minutes = offset % MINSPERHOUR;
 offset /= MINSPERHOUR;
 if (100 <= offset)
 {
  error(_("%%z UT offset magnitude exceeds 99:59:59"));
  return "%z";
 }
 else
 {
  char *p = buf;

  *p++ = sign;
  *p++ = '0' + offset / 10;
  *p++ = '0' + offset % 10;
  if (minutes | seconds)
  {
   *p++ = '0' + minutes / 10;
   *p++ = '0' + minutes % 10;
   if (seconds)
   {
    *p++ = '0' + seconds / 10;
    *p++ = '0' + seconds % 10;
   }
  }
  *p = '\0';
  return buf;
 }
}
