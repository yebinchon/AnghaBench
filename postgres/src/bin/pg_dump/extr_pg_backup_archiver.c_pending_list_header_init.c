
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* pending_next; struct TYPE_3__* pending_prev; } ;
typedef TYPE_1__ TocEntry ;



__attribute__((used)) static void
pending_list_header_init(TocEntry *l)
{
 l->pending_prev = l->pending_next = l;
}
