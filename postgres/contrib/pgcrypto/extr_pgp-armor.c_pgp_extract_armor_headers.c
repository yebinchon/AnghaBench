
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8 ;
typedef int Size ;


 int ERROR ;
 int PXE_PGP_CORRUPT_ARMOR ;
 int elog (int ,char*) ;
 int find_header (char const*,char const*,char const**,int) ;
 char* memchr (char const*,char,int) ;
 int memcpy (char*,char const*,int) ;
 char* palloc (int) ;
 char* strchr (char*,char) ;
 char* strstr (char*,char*) ;

int
pgp_extract_armor_headers(const uint8 *src, unsigned len,
        int *nheaders, char ***keys, char ***values)
{
 const uint8 *data_end = src + len;
 const uint8 *p;
 const uint8 *base64_start;
 const uint8 *armor_start;
 const uint8 *armor_end;
 Size armor_len;
 char *line;
 char *nextline;
 char *eol,
      *colon;
 int hlen;
 char *buf;
 int hdrlines;
 int n;


 hlen = find_header(src, data_end, &armor_start, 0);
 if (hlen <= 0)
  return PXE_PGP_CORRUPT_ARMOR;
 armor_start += hlen;


 hlen = find_header(armor_start, data_end, &armor_end, 1);
 if (hlen <= 0)
  return PXE_PGP_CORRUPT_ARMOR;


 hdrlines = 0;
 p = armor_start;
 while (p < armor_end && *p != '\n' && *p != '\r')
 {
  p = memchr(p, '\n', armor_end - p);
  if (!p)
   return PXE_PGP_CORRUPT_ARMOR;


  p++;
  hdrlines++;
 }
 base64_start = p;





 armor_len = base64_start - armor_start;
 buf = palloc(armor_len + 1);
 memcpy(buf, armor_start, armor_len);
 buf[armor_len] = '\0';


 *keys = (char **) palloc(hdrlines * sizeof(char *));
 *values = (char **) palloc(hdrlines * sizeof(char *));





 n = 0;
 line = buf;
 for (;;)
 {

  eol = strchr(line, '\n');
  if (!eol)
   break;
  nextline = eol + 1;

  if (eol > line && *(eol - 1) == '\r')
   eol--;
  *eol = '\0';


  colon = strstr(line, ": ");
  if (!colon)
   return PXE_PGP_CORRUPT_ARMOR;
  *colon = '\0';


  if (n >= hdrlines)
   elog(ERROR, "unexpected number of armor header lines");

  (*keys)[n] = line;
  (*values)[n] = colon + 2;
  n++;


  line = nextline;
 }

 if (n != hdrlines)
  elog(ERROR, "unexpected number of armor header lines");

 *nheaders = n;
 return 0;
}
