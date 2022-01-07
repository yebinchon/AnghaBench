
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* pending_next; TYPE_1__* pending_prev; } ;
typedef TYPE_3__ TocEntry ;
struct TYPE_6__ {TYPE_1__* pending_prev; } ;
struct TYPE_5__ {TYPE_2__* pending_next; } ;



__attribute__((used)) static void
pending_list_remove(TocEntry *te)
{
 te->pending_prev->pending_next = te->pending_next;
 te->pending_next->pending_prev = te->pending_prev;
 te->pending_prev = ((void*)0);
 te->pending_next = ((void*)0);
}
