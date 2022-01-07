
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int entrysize; int keysize; } ;
typedef int PortalHashEnt ;
typedef TYPE_1__ HASHCTL ;


 int ALLOCSET_DEFAULT_SIZES ;
 int * AllocSetContextCreate (int ,char*,int ) ;
 int Assert (int ) ;
 int HASH_ELEM ;
 int MAX_PORTALNAME_LEN ;
 int PORTALS_PER_USER ;
 int PortalHashTable ;
 int TopMemoryContext ;
 int * TopPortalContext ;
 int hash_create (char*,int ,TYPE_1__*,int ) ;

void
EnablePortalManager(void)
{
 HASHCTL ctl;

 Assert(TopPortalContext == ((void*)0));

 TopPortalContext = AllocSetContextCreate(TopMemoryContext,
            "TopPortalContext",
            ALLOCSET_DEFAULT_SIZES);

 ctl.keysize = MAX_PORTALNAME_LEN;
 ctl.entrysize = sizeof(PortalHashEnt);





 PortalHashTable = hash_create("Portal hash", PORTALS_PER_USER,
          &ctl, HASH_ELEM);
}
