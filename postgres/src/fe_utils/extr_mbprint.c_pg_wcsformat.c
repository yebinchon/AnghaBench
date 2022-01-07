
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lineptr {unsigned char* ptr; int width; } ;


 int PG_UTF8 ;
 int PQdsplen (char const*,int) ;
 int PQmblen (char const*,int) ;
 int exit (int) ;
 int sprintf (char*,char*,...) ;
 int strcpy (char*,char*) ;
 int utf8_to_unicode (unsigned char const*) ;

void
pg_wcsformat(const unsigned char *pwcs, size_t len, int encoding,
    struct lineptr *lines, int count)
{
 int w,
    chlen = 0;
 int linewidth = 0;
 unsigned char *ptr = lines->ptr;

 for (; *pwcs && len > 0; pwcs += chlen)
 {
  chlen = PQmblen((const char *) pwcs, encoding);
  if (len < (size_t) chlen)
   break;
  w = PQdsplen((const char *) pwcs, encoding);

  if (chlen == 1)
  {
   if (*pwcs == '\n')
   {
    *ptr++ = '\0';
    lines->width = linewidth;
    linewidth = 0;
    lines++;
    count--;
    if (count <= 0)
     exit(1);


    lines->ptr = ptr;
   }
   else if (*pwcs == '\r')
   {
    strcpy((char *) ptr, "\\r");
    linewidth += 2;
    ptr += 2;
   }
   else if (*pwcs == '\t')
   {
    do
    {
     *ptr++ = ' ';
     linewidth++;
    } while (linewidth % 8 != 0);
   }
   else if (w < 0)
   {
    sprintf((char *) ptr, "\\x%02X", *pwcs);
    linewidth += 4;
    ptr += 4;
   }
   else
   {
    linewidth += w;
    *ptr++ = *pwcs;
   }
  }
  else if (w < 0)
  {
   if (encoding == PG_UTF8)
    sprintf((char *) ptr, "\\u%04X", utf8_to_unicode(pwcs));
   else
   {





    sprintf((char *) ptr, "\\u????");
   }
   ptr += 6;
   linewidth += 6;
  }
  else
  {
   int i;

   for (i = 0; i < chlen; i++)
    *ptr++ = pwcs[i];
   linewidth += w;
  }
  len -= chlen;
 }
 lines->width = linewidth;
 *ptr++ = '\0';

 if (count <= 0)
  exit(1);

 (lines + 1)->ptr = ((void*)0);
}
