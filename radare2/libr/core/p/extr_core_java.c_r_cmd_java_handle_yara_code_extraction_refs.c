
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_4__ {int fcns; } ;
typedef int RCore ;
typedef int RBinJavaObj ;
typedef TYPE_1__ RAnal ;


 int eprintf (char*) ;
 int free (char*) ;
 TYPE_1__* get_anal (int *) ;
 char* malloc (int) ;
 int memcpy (char*,char const*,int) ;
 int memset (char*,int ,int) ;
 char* r_cmd_java_consumetok (char const*,char,int) ;
 scalar_t__ r_cmd_java_get_bin_obj (TYPE_1__*) ;
 int r_cmd_java_get_input_num_value (int *,char const*) ;
 scalar_t__ r_cmd_java_is_valid_input_num_value (int *,char const*) ;
 char* r_cmd_java_strtok (char const*,char,int) ;
 scalar_t__ r_list_length (int ) ;

__attribute__((used)) static int r_cmd_java_handle_yara_code_extraction_refs (RCore *core, const char *input) {
 RAnal *anal = get_anal (core);
 RBinJavaObj *bin = anal ? (RBinJavaObj *) r_cmd_java_get_bin_obj (anal) : ((void*)0);
 const char *p = input? r_cmd_java_consumetok (input, ' ', -1): ((void*)0), *n = ((void*)0);
 char *name = ((void*)0);
 ut64 addr = -1, count = -1;
 int res = 0;

 if (!bin) {
  return res;
 } else if (!anal || !anal->fcns || r_list_length (anal->fcns) == 0) {
  eprintf ("Unable to access the current analysis, perform 'af' for function analysis.\n");
  return 1;
 }

 if (!p) {
  return res;
 }

 n = *p ? r_cmd_java_strtok (p, ' ', -1) : ((void*)0);
 name = n && p && p != n ? malloc (n - p + 2) : ((void*)0);

 if (!name) {
  return res;
 }

 memset (name, 0, n-p);
 memcpy (name, p, n-p);

 p = r_cmd_java_strtok (p, ' ', -1);
 addr = p && *p && r_cmd_java_is_valid_input_num_value(core, p) ? r_cmd_java_get_input_num_value (core, p) : -1;

 p = r_cmd_java_strtok (p, ' ', -1);
 count = p && *p && r_cmd_java_is_valid_input_num_value(core, p) ? r_cmd_java_get_input_num_value (core, p) : -1;

 if (name && count != (ut64) -1 && addr != (ut64) -1) {
 }
 free (name);
 return res;
}
