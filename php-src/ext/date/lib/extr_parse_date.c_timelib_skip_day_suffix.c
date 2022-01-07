
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char) ;
 int timelib_strncasecmp (char*,char*,int) ;

__attribute__((used)) static void timelib_skip_day_suffix(char **ptr)
{
 if (isspace(**ptr)) {
  return;
 }
 if (!timelib_strncasecmp(*ptr, "nd", 2) || !timelib_strncasecmp(*ptr, "rd", 2) ||!timelib_strncasecmp(*ptr, "st", 2) || !timelib_strncasecmp(*ptr, "th", 2)) {
  *ptr += 2;
 }
}
