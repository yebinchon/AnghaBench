
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_NAME_TOO_LONG ;
 int NAMEDATALEN ;
 int NOTICE ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*,char*) ;
 int memcpy (char*,char*,int) ;
 int pg_mbcliplen (char*,int,int) ;

void
truncate_identifier(char *ident, int len, bool warn)
{
 if (len >= NAMEDATALEN)
 {
  len = pg_mbcliplen(ident, len, NAMEDATALEN - 1);
  if (warn)
  {




   char buf[NAMEDATALEN];

   memcpy(buf, ident, len);
   buf[len] = '\0';
   ereport(NOTICE,
     (errcode(ERRCODE_NAME_TOO_LONG),
      errmsg("identifier \"%s\" will be truncated to \"%s\"",
       ident, buf)));
  }
  ident[len] = '\0';
 }
}
