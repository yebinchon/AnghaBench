
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* prompt3; } ;


 TYPE_1__ pset ;

__attribute__((used)) static bool
prompt3_hook(const char *newval)
{
 pset.prompt3 = newval ? newval : "";
 return 1;
}
