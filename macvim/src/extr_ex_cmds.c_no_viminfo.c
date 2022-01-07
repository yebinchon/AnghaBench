
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ STRCMP (int *,char*) ;
 int * use_viminfo ;

__attribute__((used)) static int
no_viminfo()
{

    return (use_viminfo != ((void*)0) && STRCMP(use_viminfo, "NONE") == 0);
}
