
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lineno; char const* filename; int is_dst; int offset; int * zone; void* abbrev; } ;
typedef TYPE_1__ tzEntry ;


 int GUC_check_errmsg (char*,char const*,int) ;
 int WHITESPACE ;
 scalar_t__ isdigit (unsigned char) ;
 scalar_t__ pg_strcasecmp (char*,char*) ;
 void* pstrdup (char*) ;
 char* strtok (char*,int ) ;
 int strtol (char*,char**,int) ;

__attribute__((used)) static bool
splitTzLine(const char *filename, int lineno, char *line, tzEntry *tzentry)
{
 char *abbrev;
 char *offset;
 char *offset_endptr;
 char *remain;
 char *is_dst;

 tzentry->lineno = lineno;
 tzentry->filename = filename;

 abbrev = strtok(line, WHITESPACE);
 if (!abbrev)
 {
  GUC_check_errmsg("missing time zone abbreviation in time zone file \"%s\", line %d",
       filename, lineno);
  return 0;
 }
 tzentry->abbrev = pstrdup(abbrev);

 offset = strtok(((void*)0), WHITESPACE);
 if (!offset)
 {
  GUC_check_errmsg("missing time zone offset in time zone file \"%s\", line %d",
       filename, lineno);
  return 0;
 }


 if (isdigit((unsigned char) *offset) || *offset == '+' || *offset == '-')
 {
  tzentry->zone = ((void*)0);
  tzentry->offset = strtol(offset, &offset_endptr, 10);
  if (offset_endptr == offset || *offset_endptr != '\0')
  {
   GUC_check_errmsg("invalid number for time zone offset in time zone file \"%s\", line %d",
        filename, lineno);
   return 0;
  }

  is_dst = strtok(((void*)0), WHITESPACE);
  if (is_dst && pg_strcasecmp(is_dst, "D") == 0)
  {
   tzentry->is_dst = 1;
   remain = strtok(((void*)0), WHITESPACE);
  }
  else
  {

   tzentry->is_dst = 0;
   remain = is_dst;
  }
 }
 else
 {





  tzentry->zone = pstrdup(offset);
  tzentry->offset = 0;
  tzentry->is_dst = 0;
  remain = strtok(((void*)0), WHITESPACE);
 }

 if (!remain)
  return 1;

 if (remain[0] != '#')
 {
  GUC_check_errmsg("invalid syntax in time zone file \"%s\", line %d",
       filename, lineno);
  return 0;
 }
 return 1;
}
