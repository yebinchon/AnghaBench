
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static bool
param_is_newly_set(const char *old_val, const char *new_val)
{
 if (new_val == ((void*)0))
  return 0;

 if (old_val == ((void*)0) || strcmp(old_val, new_val) != 0)
  return 1;

 return 0;
}
