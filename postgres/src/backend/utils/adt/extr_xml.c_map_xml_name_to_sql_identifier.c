
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* data; } ;
typedef TYPE_1__ StringInfoData ;


 int appendBinaryStringInfo (TYPE_1__*,char const*,int ) ;
 int appendStringInfoString (TYPE_1__*,int ) ;
 int initStringInfo (TYPE_1__*) ;
 scalar_t__ isxdigit (unsigned char) ;
 int pg_mblen (char const*) ;
 int sscanf (char const*,char*,unsigned int*) ;
 int unicode_to_sqlchar (unsigned int) ;

char *
map_xml_name_to_sql_identifier(const char *name)
{
 StringInfoData buf;
 const char *p;

 initStringInfo(&buf);

 for (p = name; *p; p += pg_mblen(p))
 {
  if (*p == '_' && *(p + 1) == 'x'
   && isxdigit((unsigned char) *(p + 2))
   && isxdigit((unsigned char) *(p + 3))
   && isxdigit((unsigned char) *(p + 4))
   && isxdigit((unsigned char) *(p + 5))
   && *(p + 6) == '_')
  {
   unsigned int u;

   sscanf(p + 2, "%X", &u);
   appendStringInfoString(&buf, unicode_to_sqlchar(u));
   p += 6;
  }
  else
   appendBinaryStringInfo(&buf, p, pg_mblen(p));
 }

 return buf.data;
}
