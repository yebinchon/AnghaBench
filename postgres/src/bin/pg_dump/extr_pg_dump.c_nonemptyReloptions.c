
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;

__attribute__((used)) static bool
nonemptyReloptions(const char *reloptions)
{

 return (reloptions != ((void*)0) && strlen(reloptions) > 2);
}
