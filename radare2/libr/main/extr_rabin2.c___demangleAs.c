
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int demanglercmd; } ;
 TYPE_1__* bin ;
 int eprintf (char*) ;
 int file ;
 char* r_bin_demangle_cxx (int *,int ,int ) ;
 char* r_bin_demangle_java (int ) ;
 char* r_bin_demangle_msvc (int ) ;
 char* r_bin_demangle_objc (int *,int ) ;
 char* r_bin_demangle_rust (int *,int ,int ) ;
 char* r_bin_demangle_swift (int ,int) ;

__attribute__((used)) static char *__demangleAs(int type) {
 bool syscmd = bin? bin->demanglercmd: 0;
 char *res = ((void*)0);
 switch (type) {
 case 133: res = r_bin_demangle_cxx (((void*)0), file, 0); break;
 case 132: res = r_bin_demangle_java (file); break;
 case 130: res = r_bin_demangle_objc (((void*)0), file); break;
 case 128: res = r_bin_demangle_swift (file, syscmd); break;
 case 131: res = r_bin_demangle_msvc (file); break;
 case 129: res = r_bin_demangle_rust (((void*)0), file, 0); break;
 default:
  eprintf ("Unsupported demangler\n");
  break;
 }
 return res;
}
