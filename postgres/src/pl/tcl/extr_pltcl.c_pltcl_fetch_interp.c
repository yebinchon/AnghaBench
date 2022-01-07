
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * interp; } ;
typedef TYPE_1__ pltcl_interp_desc ;
typedef int Oid ;


 int GetUserId () ;
 int HASH_ENTER ;
 int InvalidOid ;
 TYPE_1__* hash_search (int ,int *,int ,int*) ;
 int pltcl_init_interp (TYPE_1__*,int ,int) ;
 int pltcl_interp_htab ;

__attribute__((used)) static pltcl_interp_desc *
pltcl_fetch_interp(Oid prolang, bool pltrusted)
{
 Oid user_id;
 pltcl_interp_desc *interp_desc;
 bool found;


 if (pltrusted)
  user_id = GetUserId();
 else
  user_id = InvalidOid;

 interp_desc = hash_search(pltcl_interp_htab, &user_id,
         HASH_ENTER,
         &found);
 if (!found)
  interp_desc->interp = ((void*)0);


 if (!interp_desc->interp)
  pltcl_init_interp(interp_desc, prolang, pltrusted);

 return interp_desc;
}
