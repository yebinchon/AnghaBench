
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PQdsplen (char const*,int) ;
 int PQmblen (char const*,int) ;

void
pg_wcssize(const unsigned char *pwcs, size_t len, int encoding,
     int *result_width, int *result_height, int *result_format_size)
{
 int w,
    chlen = 0,
    linewidth = 0;
 int width = 0;
 int height = 1;
 int format_size = 0;

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
    if (linewidth > width)
     width = linewidth;
    linewidth = 0;
    height += 1;
    format_size += 1;
   }
   else if (*pwcs == '\r')
   {
    linewidth += 2;
    format_size += 2;
   }
   else if (*pwcs == '\t')
   {
    do
    {
     linewidth++;
     format_size++;
    } while (linewidth % 8 != 0);
   }
   else if (w < 0)
   {
    linewidth += 4;
    format_size += 4;
   }
   else
   {
    linewidth += w;
    format_size += 1;
   }
  }
  else if (w < 0)
  {
   linewidth += 6;
   format_size += 6;
  }
  else
  {
   linewidth += w;
   format_size += chlen;
  }
  len -= chlen;
 }
 if (linewidth > width)
  width = linewidth;
 format_size += 1;


 if (result_width)
  *result_width = width;
 if (result_height)
  *result_height = height;
 if (result_format_size)
  *result_format_size = format_size;
}
