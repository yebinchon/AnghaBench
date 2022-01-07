
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HLF_M ;
 int * confirm_msg ;
 int confirm_msg_used ;
 int hl_attr (int ) ;
 int msg_puts_attr (int *,int ) ;

void
display_confirm_msg()
{

    ++confirm_msg_used;
    if (confirm_msg != ((void*)0))
 msg_puts_attr(confirm_msg, hl_attr(HLF_M));
    --confirm_msg_used;
}
