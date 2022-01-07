
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdline_info {int cmdpos; } ;


 struct cmdline_info* get_ccline_ptr () ;

int
get_cmdline_pos()
{
    struct cmdline_info *p = get_ccline_ptr();

    if (p == ((void*)0))
 return -1;
    return p->cmdpos;
}
