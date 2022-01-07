
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_x264 {int dummy; } ;


 scalar_t__ strcmp (char const*,char const* const) ;
 int warn (char*,char const*,char const*) ;

__attribute__((used)) static const char *validate(struct obs_x264 *obsx264, const char *val,
       const char *name, const char *const *list)
{
 if (!val || !*val)
  return val;

 while (*list) {
  if (strcmp(val, *list) == 0)
   return val;

  list++;
 }

 warn("Invalid %s: %s", name, val);
 return ((void*)0);
}
