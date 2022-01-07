
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut32 ;
struct TYPE_4__ {int fcns; } ;
typedef int RCore ;
typedef int RBinJavaObj ;
typedef TYPE_1__ RAnal ;


 int eprintf (char*) ;
 int free (char*) ;
 TYPE_1__* get_anal (int *) ;
 char* malloc (int) ;
 char* r_cmd_java_consumetok (char const*,char,int) ;
 scalar_t__ r_cmd_java_get_bin_obj (TYPE_1__*) ;
 char* r_cmd_java_strtok (char const*,char,int) ;
 int r_cons_printf (char*,char*,char*,char*) ;
 scalar_t__ r_list_length (int ) ;
 int snprintf (char*,int,char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static int r_cmd_java_handle_insert_method_ref (RCore *core, const char *input) {
 RAnal *anal = get_anal (core);
 RBinJavaObj *bin = anal ? (RBinJavaObj *) r_cmd_java_get_bin_obj (anal) : ((void*)0);
 const char *p = input? r_cmd_java_consumetok (input, ' ', -1): ((void*)0), *n = ((void*)0);
 char *classname=((void*)0), *name = ((void*)0), *descriptor = ((void*)0);
 ut32 cn_sz = 0, n_sz = 0, d_sz = 0;
 int res = 0;

 if (!bin) {
  return res;
 }
 if (!anal || !anal->fcns || r_list_length (anal->fcns) == 0) {
  eprintf ("Unable to access the current analysis, perform 'af' for function analysis.\n");
  return 1;
 }
 if (!p) {
  return res;
 }

 n = p && *p ? r_cmd_java_strtok (p, ' ', -1) : ((void*)0);
 classname = n && p && p != n ? malloc (n-p+1) : ((void*)0);
 cn_sz = n && p ? n-p +1 : 0;
 if (!classname) {
  return res;
 }

 snprintf (classname, cn_sz, "%s", p);


 p = n+1;
 n = p && *p ? r_cmd_java_strtok (p, ' ', -1) : ((void*)0);
 name = n && p && p != n ? malloc (n-p+1) : ((void*)0);
 n_sz = n && p ? n-p +1 : 0;
 if (!name) {
  free (classname);
  return res;
 }
 snprintf (name, n_sz, "%s", p);



 p = n + 1;
 n = p && *p ? r_cmd_java_strtok (p, ' ', -1) : ((void*)0);
 if (n) {
  descriptor = n && p && p != n ? malloc (n-p+1) : ((void*)0);
  d_sz = n-p +1;
 } else if (p && *p) {
  d_sz = strlen (p) + 1;
  descriptor = d_sz > 1 ? malloc (d_sz) : ((void*)0);
 }

 if (!descriptor) {
  free (classname);
  free (name);
  return res;
 }
 snprintf (descriptor, d_sz, "%s", p);



 r_cons_printf ("Would be adding class name:%s, name: %s, descriptor: %s\n", classname, name, descriptor);
 free (classname);
 free (name);
 free (descriptor);
 res = 1;
 return res;
}
