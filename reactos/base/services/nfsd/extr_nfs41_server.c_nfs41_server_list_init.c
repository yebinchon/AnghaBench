
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int head; } ;


 int InitializeCriticalSection (int *) ;
 TYPE_1__ g_server_list ;
 int list_init (int *) ;

void nfs41_server_list_init()
{
    list_init(&g_server_list.head);
    InitializeCriticalSection(&g_server_list.lock);
}
