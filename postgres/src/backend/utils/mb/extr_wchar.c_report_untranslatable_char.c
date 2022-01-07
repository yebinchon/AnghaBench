
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;


 int ERRCODE_UNTRANSLATABLE_CHARACTER ;
 int ERROR ;
 int Min (int,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*,int ,int ) ;
 TYPE_1__* pg_enc2name_tbl ;
 int pg_encoding_mblen (int,char const*) ;
 int sprintf (char*,char*,...) ;

void
report_untranslatable_char(int src_encoding, int dest_encoding,
         const char *mbstr, int len)
{
 int l = pg_encoding_mblen(src_encoding, mbstr);
 char buf[8 * 5 + 1];
 char *p = buf;
 int j,
    jlimit;

 jlimit = Min(l, len);
 jlimit = Min(jlimit, 8);

 for (j = 0; j < jlimit; j++)
 {
  p += sprintf(p, "0x%02x", (unsigned char) mbstr[j]);
  if (j < jlimit - 1)
   p += sprintf(p, " ");
 }

 ereport(ERROR,
   (errcode(ERRCODE_UNTRANSLATABLE_CHARACTER),
    errmsg("character with byte sequence %s in encoding \"%s\" has no equivalent in encoding \"%s\"",
     buf,
     pg_enc2name_tbl[src_encoding].name,
     pg_enc2name_tbl[dest_encoding].name)));
}
