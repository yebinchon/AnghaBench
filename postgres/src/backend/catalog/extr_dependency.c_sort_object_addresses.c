
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numrefs; scalar_t__ refs; } ;
typedef TYPE_1__ ObjectAddresses ;
typedef int ObjectAddress ;


 int object_address_comparator ;
 int qsort (void*,int,int,int ) ;

void
sort_object_addresses(ObjectAddresses *addrs)
{
 if (addrs->numrefs > 1)
  qsort((void *) addrs->refs, addrs->numrefs,
     sizeof(ObjectAddress),
     object_address_comparator);
}
