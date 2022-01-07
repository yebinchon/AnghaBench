
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdline_info {int dummy; } ;
typedef int char_u ;


 scalar_t__ alloc (unsigned int) ;
 int save_cmdline (struct cmdline_info*) ;

char_u *
save_cmdline_alloc()
{
    struct cmdline_info *p;

    p = (struct cmdline_info *)alloc((unsigned)sizeof(struct cmdline_info));
    if (p != ((void*)0))
 save_cmdline(p);
    return (char_u *)p;
}
