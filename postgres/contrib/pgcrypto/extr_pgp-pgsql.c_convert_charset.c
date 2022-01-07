
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;


 scalar_t__ VARDATA_ANY (int *) ;
 int VARSIZE_ANY_EXHDR (int *) ;
 int * cstring_to_text (char*) ;
 int pfree (unsigned char*) ;
 unsigned char* pg_do_encoding_conversion (unsigned char*,int,int,int) ;

__attribute__((used)) static text *
convert_charset(text *src, int cset_from, int cset_to)
{
 int src_len = VARSIZE_ANY_EXHDR(src);
 unsigned char *dst;
 unsigned char *csrc = (unsigned char *) VARDATA_ANY(src);
 text *res;

 dst = pg_do_encoding_conversion(csrc, src_len, cset_from, cset_to);
 if (dst == csrc)
  return src;

 res = cstring_to_text((char *) dst);
 pfree(dst);
 return res;
}
