
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type_str; } ;
typedef TYPE_1__ STypeCodeStr ;
typedef int EDemanglerErr ;


 int eDemanglerErrOK ;
 int eDemanglerErrUncorrectMangledSymbol ;
 int free (int ) ;
 int get_namespace_and_name (char*,TYPE_1__*,int *) ;
 int init_type_code_str_struct (TYPE_1__*) ;
 char* r_str_newf (char*,char*,int ) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static EDemanglerErr parse_microsoft_rtti_mangled_name(char *sym, char **demangled_name) {
 EDemanglerErr err = eDemanglerErrOK;
 char *type = ((void*)0);
 if (!strncmp (sym, "AT", 2)) {
  type = "union";
 } else if (!strncmp (sym, "AU", 2)) {
  type = "struct";
 } else if (!strncmp (sym, "AV", 2)) {
  type = "class";
 } else if (!strncmp (sym, "AW", 2)) {
  type = "enum";
 } else {
  err = eDemanglerErrUncorrectMangledSymbol;
  goto parse_microsoft_rtti_mangled_name_err;
 }
 STypeCodeStr type_code_str;
 init_type_code_str_struct (&type_code_str);
 int len = get_namespace_and_name (sym + 2, &type_code_str, ((void*)0));
 if (!len) {
  err = eDemanglerErrUncorrectMangledSymbol;
  goto parse_microsoft_rtti_mangled_name_err;
 }

 *demangled_name = r_str_newf ("%s %s", type, type_code_str.type_str);
 free (type_code_str.type_str);

parse_microsoft_rtti_mangled_name_err:
 return err;
}
