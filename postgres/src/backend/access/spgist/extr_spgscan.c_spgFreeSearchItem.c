
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int attbyval; } ;
struct TYPE_10__ {TYPE_1__ attLeafType; } ;
struct TYPE_12__ {TYPE_2__ state; } ;
struct TYPE_11__ {struct TYPE_11__* traversalValue; int value; } ;
typedef TYPE_3__ SpGistSearchItem ;
typedef TYPE_4__* SpGistScanOpaque ;


 TYPE_3__* DatumGetPointer (int ) ;
 int pfree (TYPE_3__*) ;

__attribute__((used)) static void
spgFreeSearchItem(SpGistScanOpaque so, SpGistSearchItem *item)
{
 if (!so->state.attLeafType.attbyval &&
  DatumGetPointer(item->value) != ((void*)0))
  pfree(DatumGetPointer(item->value));

 if (item->traversalValue)
  pfree(item->traversalValue);

 pfree(item);
}
