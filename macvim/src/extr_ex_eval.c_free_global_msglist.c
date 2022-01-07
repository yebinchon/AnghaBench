
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free_msglist (int *) ;
 int ** msg_list ;

void
free_global_msglist()
{
    free_msglist(*msg_list);
    *msg_list = ((void*)0);
}
