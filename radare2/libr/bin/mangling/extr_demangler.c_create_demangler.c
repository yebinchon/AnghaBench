
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ symbol; scalar_t__ demangle; } ;
typedef TYPE_1__ SDemangler ;
typedef int EDemanglerErr ;


 int eDemanglerErrMemoryAllocation ;
 int eDemanglerErrOK ;
 scalar_t__ malloc (int) ;

EDemanglerErr create_demangler(SDemangler **demangler)
{
 EDemanglerErr err = eDemanglerErrOK;

 *demangler = (SDemangler *) malloc(sizeof(SDemangler));

 if (!*demangler) {
  err = eDemanglerErrMemoryAllocation;
  goto create_demagler_err;
 }

 (*demangler)->demangle = 0;
 (*demangler)->symbol = 0;

create_demagler_err:
 return err;
}
