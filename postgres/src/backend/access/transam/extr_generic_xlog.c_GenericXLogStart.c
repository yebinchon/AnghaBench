
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* pages; TYPE_2__* images; int isLogged; } ;
struct TYPE_6__ {int data; } ;
struct TYPE_5__ {int buffer; int image; } ;
typedef int Relation ;
typedef TYPE_3__ GenericXLogState ;


 int InvalidBuffer ;
 int MAX_GENERIC_XLOG_PAGES ;
 int RelationNeedsWAL (int ) ;
 scalar_t__ palloc (int) ;

GenericXLogState *
GenericXLogStart(Relation relation)
{
 GenericXLogState *state;
 int i;

 state = (GenericXLogState *) palloc(sizeof(GenericXLogState));
 state->isLogged = RelationNeedsWAL(relation);

 for (i = 0; i < MAX_GENERIC_XLOG_PAGES; i++)
 {
  state->pages[i].image = state->images[i].data;
  state->pages[i].buffer = InvalidBuffer;
 }

 return state;
}
