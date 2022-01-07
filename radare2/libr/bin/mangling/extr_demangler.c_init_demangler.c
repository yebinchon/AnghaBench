
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int demangle_func ;
struct TYPE_3__ {int demangle; int symbol; } ;
typedef TYPE_1__ SDemangler ;
typedef int EManglingType ;
typedef scalar_t__ EDemanglerErr ;


 scalar_t__ eDemanglerErrMemoryAllocation ;
 scalar_t__ eDemanglerErrOK ;
 scalar_t__ eDemanglerErrUnkown ;
 scalar_t__ eDemanglerErrUnsupportedMangling ;


 int get_mangling_type (char*) ;
 int microsoft_demangle ;
 int strdup (char*) ;

EDemanglerErr init_demangler(SDemangler *demangler, char *sym)
{
 EManglingType mangling_type = 128;
 EDemanglerErr err = eDemanglerErrOK;


 demangle_func demangle_funcs[] = {
  microsoft_demangle,
  0,
  0
 };

 if (demangler == 0) {
  err = eDemanglerErrMemoryAllocation;
  goto init_demangler_err;
 }

 mangling_type = get_mangling_type(sym);
 switch (mangling_type) {
 case 128:
  err = eDemanglerErrUnsupportedMangling;
  break;
 case 129:
  err = eDemanglerErrUnkown;
  break;
 default:
  break;
 }

 if (err != eDemanglerErrOK) {
  goto init_demangler_err;
 }

 demangler->symbol = strdup(sym);
 demangler->demangle = demangle_funcs[mangling_type];

init_demangler_err:
 return err;
}
