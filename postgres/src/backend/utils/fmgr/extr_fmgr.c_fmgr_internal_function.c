
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int foid; } ;
typedef int Oid ;
typedef TYPE_1__ FmgrBuiltin ;


 int InvalidOid ;
 TYPE_1__* fmgr_lookupByName (char const*) ;

Oid
fmgr_internal_function(const char *proname)
{
 const FmgrBuiltin *fbp = fmgr_lookupByName(proname);

 if (fbp == ((void*)0))
  return InvalidOid;
 return fbp->foid;
}
