
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int attLabelType; int attPrefixType; int attLeafType; int attType; int config; } ;
struct TYPE_5__ {int isBuild; int myXid; int deadTupleStorage; int attLabelType; int attPrefixType; int attLeafType; int attType; int config; } ;
typedef TYPE_1__ SpGistState ;
typedef TYPE_2__ SpGistCache ;
typedef int Relation ;


 int GetTopTransactionIdIfAny () ;
 int SGDTSIZE ;
 int palloc0 (int ) ;
 TYPE_2__* spgGetCache (int ) ;

void
initSpGistState(SpGistState *state, Relation index)
{
 SpGistCache *cache;


 cache = spgGetCache(index);

 state->config = cache->config;
 state->attType = cache->attType;
 state->attLeafType = cache->attLeafType;
 state->attPrefixType = cache->attPrefixType;
 state->attLabelType = cache->attLabelType;


 state->deadTupleStorage = palloc0(SGDTSIZE);


 state->myXid = GetTopTransactionIdIfAny();


 state->isBuild = 0;
}
