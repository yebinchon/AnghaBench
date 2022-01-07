
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* parent; } ;
typedef TYPE_1__ JsonbIterator ;


 int pfree (TYPE_1__*) ;

__attribute__((used)) static JsonbIterator *
freeAndGetParent(JsonbIterator *it)
{
 JsonbIterator *v = it->parent;

 pfree(it);
 return v;
}
