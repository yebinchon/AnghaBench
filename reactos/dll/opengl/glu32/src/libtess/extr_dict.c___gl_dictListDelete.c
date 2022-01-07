
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* next; TYPE_1__* prev; } ;
struct TYPE_7__ {TYPE_1__* prev; } ;
struct TYPE_6__ {TYPE_2__* next; } ;
typedef TYPE_3__ DictNode ;
typedef int Dict ;


 int memFree (TYPE_3__*) ;

void dictDelete( Dict *dict, DictNode *node )
{
  node->next->prev = node->prev;
  node->prev->next = node->next;
  memFree( node );
}
