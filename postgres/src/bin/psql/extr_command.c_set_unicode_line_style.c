
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unicode_linestyle ;


 int UNICODE_LINESTYLE_DOUBLE ;
 int UNICODE_LINESTYLE_SINGLE ;
 scalar_t__ pg_strncasecmp (char*,char const*,size_t) ;

__attribute__((used)) static bool
set_unicode_line_style(const char *value, size_t vallen,
        unicode_linestyle *linestyle)
{
 if (pg_strncasecmp("single", value, vallen) == 0)
  *linestyle = UNICODE_LINESTYLE_SINGLE;
 else if (pg_strncasecmp("double", value, vallen) == 0)
  *linestyle = UNICODE_LINESTYLE_DOUBLE;
 else
  return 0;
 return 1;
}
