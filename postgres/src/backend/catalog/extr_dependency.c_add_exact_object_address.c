
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numrefs; int maxrefs; int * refs; int extras; } ;
typedef TYPE_1__ ObjectAddresses ;
typedef int ObjectAddress ;


 int Assert (int) ;
 scalar_t__ repalloc (int *,int) ;

void
add_exact_object_address(const ObjectAddress *object,
       ObjectAddresses *addrs)
{
 ObjectAddress *item;


 if (addrs->numrefs >= addrs->maxrefs)
 {
  addrs->maxrefs *= 2;
  addrs->refs = (ObjectAddress *)
   repalloc(addrs->refs, addrs->maxrefs * sizeof(ObjectAddress));
  Assert(!addrs->extras);
 }

 item = addrs->refs + addrs->numrefs;
 *item = *object;
 addrs->numrefs++;
}
