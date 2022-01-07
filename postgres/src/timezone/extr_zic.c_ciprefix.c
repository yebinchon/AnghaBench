
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ lowerit (int ) ;

__attribute__((used)) static bool
ciprefix(char const *abbr, char const *word)
{
 do
  if (!*abbr)
   return 1;
 while (lowerit(*abbr++) == lowerit(*word++));

 return 0;
}
