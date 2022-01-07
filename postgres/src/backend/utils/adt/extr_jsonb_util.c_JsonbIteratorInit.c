
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonbIterator ;
typedef int JsonbContainer ;


 int * iteratorFromContainer (int *,int *) ;

JsonbIterator *
JsonbIteratorInit(JsonbContainer *container)
{
 return iteratorFromContainer(container, ((void*)0));
}
