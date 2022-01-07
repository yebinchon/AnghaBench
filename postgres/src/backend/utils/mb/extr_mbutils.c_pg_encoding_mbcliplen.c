
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int (* mblen_converter ) (unsigned char const*) ;
struct TYPE_2__ {int (* mblen ) (unsigned char const*) ;} ;


 int cliplen (char const*,int,int) ;
 int pg_encoding_max_length (int) ;
 TYPE_1__* pg_wchar_table ;
 int stub1 (unsigned char const*) ;

int
pg_encoding_mbcliplen(int encoding, const char *mbstr,
       int len, int limit)
{
 mblen_converter mblen_fn;
 int clen = 0;
 int l;


 if (pg_encoding_max_length(encoding) == 1)
  return cliplen(mbstr, len, limit);

 mblen_fn = pg_wchar_table[encoding].mblen;

 while (len > 0 && *mbstr)
 {
  l = (*mblen_fn) ((const unsigned char *) mbstr);
  if ((clen + l) > limit)
   break;
  clen += l;
  if (clen == limit)
   break;
  len -= l;
  mbstr += l;
 }
 return clen;
}
