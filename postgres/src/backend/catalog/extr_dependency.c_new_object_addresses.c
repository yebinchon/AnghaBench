
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int maxrefs; int * extras; int * refs; scalar_t__ numrefs; } ;
typedef TYPE_1__ ObjectAddresses ;
typedef int ObjectAddress ;


 TYPE_1__* palloc (int) ;

ObjectAddresses *
new_object_addresses(void)
{
 ObjectAddresses *addrs;

 addrs = palloc(sizeof(ObjectAddresses));

 addrs->numrefs = 0;
 addrs->maxrefs = 32;
 addrs->refs = (ObjectAddress *)
  palloc(addrs->maxrefs * sizeof(ObjectAddress));
 addrs->extras = ((void*)0);

 return addrs;
}
