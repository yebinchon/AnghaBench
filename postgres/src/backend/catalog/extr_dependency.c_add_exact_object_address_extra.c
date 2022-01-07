
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int maxrefs; int numrefs; int * extras; int * refs; } ;
typedef TYPE_1__ ObjectAddresses ;
typedef int ObjectAddressExtra ;
typedef int ObjectAddress ;


 scalar_t__ palloc (int) ;
 scalar_t__ repalloc (int *,int) ;

__attribute__((used)) static void
add_exact_object_address_extra(const ObjectAddress *object,
          const ObjectAddressExtra *extra,
          ObjectAddresses *addrs)
{
 ObjectAddress *item;
 ObjectAddressExtra *itemextra;


 if (!addrs->extras)
  addrs->extras = (ObjectAddressExtra *)
   palloc(addrs->maxrefs * sizeof(ObjectAddressExtra));


 if (addrs->numrefs >= addrs->maxrefs)
 {
  addrs->maxrefs *= 2;
  addrs->refs = (ObjectAddress *)
   repalloc(addrs->refs, addrs->maxrefs * sizeof(ObjectAddress));
  addrs->extras = (ObjectAddressExtra *)
   repalloc(addrs->extras, addrs->maxrefs * sizeof(ObjectAddressExtra));
 }

 item = addrs->refs + addrs->numrefs;
 *item = *object;
 itemextra = addrs->extras + addrs->numrefs;
 *itemextra = *extra;
 addrs->numrefs++;
}
