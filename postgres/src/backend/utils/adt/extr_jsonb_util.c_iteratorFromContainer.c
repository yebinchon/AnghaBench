
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int header; scalar_t__ children; } ;
struct TYPE_9__ {int nElems; char* dataProper; int state; scalar_t__ children; int isScalar; struct TYPE_9__* parent; TYPE_2__* container; } ;
typedef TYPE_1__ JsonbIterator ;
typedef TYPE_2__ JsonbContainer ;
typedef int JEntry ;


 int Assert (int) ;
 int ERROR ;
 int JBI_ARRAY_START ;
 int JBI_OBJECT_START ;


 int JsonContainerIsScalar (TYPE_2__*) ;
 int JsonContainerSize (TYPE_2__*) ;
 int elog (int ,char*) ;
 TYPE_1__* palloc0 (int) ;

__attribute__((used)) static JsonbIterator *
iteratorFromContainer(JsonbContainer *container, JsonbIterator *parent)
{
 JsonbIterator *it;

 it = palloc0(sizeof(JsonbIterator));
 it->container = container;
 it->parent = parent;
 it->nElems = JsonContainerSize(container);


 it->children = container->children;

 switch (container->header & (129 | 128))
 {
  case 129:
   it->dataProper =
    (char *) it->children + it->nElems * sizeof(JEntry);
   it->isScalar = JsonContainerIsScalar(container);

   Assert(!it->isScalar || it->nElems == 1);

   it->state = JBI_ARRAY_START;
   break;

  case 128:
   it->dataProper =
    (char *) it->children + it->nElems * sizeof(JEntry) * 2;
   it->state = JBI_OBJECT_START;
   break;

  default:
   elog(ERROR, "unknown type of jsonb container");
 }

 return it;
}
