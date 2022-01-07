
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int offset; scalar_t__ abbrev; int lineno; int filename; } ;
typedef TYPE_1__ tzEntry ;


 int GUC_check_errmsg (char*,int,scalar_t__,int ,...) ;
 scalar_t__ TOKMAXLEN ;
 unsigned char pg_tolower (unsigned char) ;
 scalar_t__ strlen (scalar_t__) ;

__attribute__((used)) static bool
validateTzEntry(tzEntry *tzentry)
{
 unsigned char *p;




 if (strlen(tzentry->abbrev) > TOKMAXLEN)
 {
  GUC_check_errmsg("time zone abbreviation \"%s\" is too long (maximum %d characters) in time zone file \"%s\", line %d",
       tzentry->abbrev, TOKMAXLEN,
       tzentry->filename, tzentry->lineno);
  return 0;
 }




 if (tzentry->offset > 14 * 60 * 60 ||
  tzentry->offset < -14 * 60 * 60)
 {
  GUC_check_errmsg("time zone offset %d is out of range in time zone file \"%s\", line %d",
       tzentry->offset,
       tzentry->filename, tzentry->lineno);
  return 0;
 }




 for (p = (unsigned char *) tzentry->abbrev; *p; p++)
  *p = pg_tolower(*p);

 return 1;
}
