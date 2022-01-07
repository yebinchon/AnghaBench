
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;


 int ERRCODE_CHARACTER_NOT_IN_REPERTOIRE ;
 int ERROR ;
 int Min (int,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,char*) ;
 TYPE_1__* pg_enc2name_tbl ;
 int pg_encoding_mblen (int,char const*) ;
 int sprintf (char*,char*,...) ;

void
report_invalid_encoding(int encoding, const char *mbstr, int len)
{
 int l = pg_encoding_mblen(encoding, mbstr);
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
   (errcode(ERRCODE_CHARACTER_NOT_IN_REPERTOIRE),
    errmsg("invalid byte sequence for encoding \"%s\": %s",
     pg_enc2name_tbl[encoding].name,
     buf)));
}
