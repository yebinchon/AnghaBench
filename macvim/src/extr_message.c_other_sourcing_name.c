
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 scalar_t__ STRCMP (int *,int *) ;
 int TRUE ;
 int * last_sourcing_name ;
 int * sourcing_name ;

__attribute__((used)) static int
other_sourcing_name()
{
    if (sourcing_name != ((void*)0))
    {
 if (last_sourcing_name != ((void*)0))
     return STRCMP(sourcing_name, last_sourcing_name) != 0;
 return TRUE;
    }
    return FALSE;
}
