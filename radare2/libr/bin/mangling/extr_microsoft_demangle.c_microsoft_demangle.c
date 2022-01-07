
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ symbol; } ;
typedef TYPE_1__ SDemangler ;
typedef int EDemanglerErr ;


 int abbr_names ;
 int abbr_types ;
 int eDemanglerErrMemoryAllocation ;
 int eDemanglerErrOK ;
 int free ;
 int parse_microsoft_mangled_name (scalar_t__,char**) ;
 int parse_microsoft_rtti_mangled_name (scalar_t__,char**) ;
 int r_list_free (int ) ;
 int r_list_newf (int ) ;
 int strncmp (scalar_t__,char*,int) ;

EDemanglerErr microsoft_demangle(SDemangler *demangler, char **demangled_name) {
 EDemanglerErr err = eDemanglerErrOK;




 abbr_types = r_list_newf (free);
 abbr_names = r_list_newf (free);

 if (!demangler || !demangled_name) {
  err = eDemanglerErrMemoryAllocation;
  goto microsoft_demangle_err;
 }

 if (!strncmp (demangler->symbol, ".?", 2)) {
  err = parse_microsoft_rtti_mangled_name (demangler->symbol + 2, demangled_name);
 } else {
  err = parse_microsoft_mangled_name (demangler->symbol + 1, demangled_name);
 }

microsoft_demangle_err:
 r_list_free (abbr_names);
 r_list_free (abbr_types);
 return err;
}
