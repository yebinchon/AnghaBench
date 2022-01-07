
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* extras; struct TYPE_4__* refs; } ;
typedef TYPE_1__ ObjectAddresses ;


 int pfree (TYPE_1__*) ;

void
free_object_addresses(ObjectAddresses *addrs)
{
 pfree(addrs->refs);
 if (addrs->extras)
  pfree(addrs->extras);
 pfree(addrs);
}
