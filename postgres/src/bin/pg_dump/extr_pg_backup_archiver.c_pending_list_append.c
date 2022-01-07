
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* pending_next; struct TYPE_4__* pending_prev; } ;
typedef TYPE_1__ TocEntry ;



__attribute__((used)) static void
pending_list_append(TocEntry *l, TocEntry *te)
{
 te->pending_prev = l->pending_prev;
 l->pending_prev->pending_next = te;
 l->pending_prev = te;
 te->pending_next = l;
}
