
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dlclose (scalar_t__) ;
 scalar_t__ veclib ;

__attribute__((used)) __attribute__((destructor))
static void unloadlib(void)
{
    if (veclib) dlclose(veclib);
}
