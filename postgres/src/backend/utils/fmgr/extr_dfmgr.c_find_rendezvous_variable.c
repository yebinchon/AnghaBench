
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* varValue; } ;
typedef TYPE_1__ rendezvousHashEntry ;
typedef int ctl ;
struct TYPE_6__ {int entrysize; int keysize; } ;
typedef int HTAB ;
typedef TYPE_2__ HASHCTL ;


 int HASH_ELEM ;
 int HASH_ENTER ;
 int MemSet (TYPE_2__*,int ,int) ;
 int NAMEDATALEN ;
 int * hash_create (char*,int,TYPE_2__*,int ) ;
 scalar_t__ hash_search (int *,char const*,int ,int*) ;

void **
find_rendezvous_variable(const char *varName)
{
 static HTAB *rendezvousHash = ((void*)0);

 rendezvousHashEntry *hentry;
 bool found;


 if (rendezvousHash == ((void*)0))
 {
  HASHCTL ctl;

  MemSet(&ctl, 0, sizeof(ctl));
  ctl.keysize = NAMEDATALEN;
  ctl.entrysize = sizeof(rendezvousHashEntry);
  rendezvousHash = hash_create("Rendezvous variable hash",
          16,
          &ctl,
          HASH_ELEM);
 }


 hentry = (rendezvousHashEntry *) hash_search(rendezvousHash,
             varName,
             HASH_ENTER,
             &found);


 if (!found)
  hentry->varValue = ((void*)0);

 return &hentry->varValue;
}
