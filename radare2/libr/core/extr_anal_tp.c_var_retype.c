
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_3__ {char* type; int name; int isarg; int size; int kind; int delta; } ;
typedef int RStrBuf ;
typedef TYPE_1__ RAnalVar ;
typedef int RAnal ;


 int r_anal_var_retype (int *,int ,int,int ,int ,char*,int ,int ,int ) ;
 scalar_t__ r_str_endswith (char*,char*) ;
 scalar_t__ r_str_startswith (char*,char*) ;
 int r_str_trim (char*) ;
 int r_strbuf_append (int *,char*) ;
 int r_strbuf_free (int *) ;
 char* r_strbuf_get (int *) ;
 int * r_strbuf_new (char*) ;
 int r_strbuf_set (int *,char*) ;
 int r_strbuf_setf (int *,char*,char*,...) ;
 int strcmp (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 char* strstr (char const*,char*) ;

__attribute__((used)) static void var_retype(RAnal *anal, RAnalVar *var, const char *vname, char *type, ut64 addr, bool ref, bool pfx) {
 if (!type || !var) {
  return;
 }
 char *trim = type;
 r_str_trim (trim);
 if (!*trim) {
  return;
 }
 bool is_ptr = (vname && *vname == '*')? 1: 0;
 if (!strncmp (trim, "int", 3) || (!is_ptr && !strcmp (trim, "void"))) {

  return;
 }
 const char *expand = var->type;
 if (!strcmp(var->type, "int32_t")) {
  expand = "int";
 } else if (!strcmp(var->type, "uint32_t")) {
  expand = "unsigned int";
 } else if (!strcmp(var->type, "uint64_t")) {
  expand = "unsigned long long";
 }
 const char *tmp = strstr (expand, "int");
 bool is_default = tmp? 1: 0;
 if (!is_default && strncmp (var->type, "void", 4)) {


  return;
 }
 RStrBuf *sb = r_strbuf_new ("");
 if (pfx) {
  if (is_default && strncmp (var->type, "signed", 6)) {
   r_strbuf_setf (sb, "%s %s", type, tmp);
  } else {
   r_strbuf_free (sb);
   return;
  }
 } else {
  r_strbuf_set (sb, trim);
 }
 if (!strncmp (r_strbuf_get (sb), "const ", 6)) {


  r_strbuf_setf (sb, "%s", type + 6);
 }
 if (is_ptr) {

  r_strbuf_append (sb, " *");
 }
 if (ref) {
  if (r_str_endswith (r_strbuf_get (sb), "*")) {
   r_strbuf_append (sb, "*");
  } else {
   r_strbuf_append (sb, " *");
  }
 }

 char* tmp1 = r_strbuf_get (sb);
 if (r_str_startswith (tmp1, "unsigned long long")) {
  r_strbuf_set (sb, "uint64_t");
 } else if (r_str_startswith (tmp1, "unsigned")) {
  r_strbuf_set (sb, "uint32_t");
 } else if (r_str_startswith (tmp1, "int")) {
  r_strbuf_set (sb, "int32_t");
 }
 r_anal_var_retype (anal, addr, 1, var->delta, var->kind, r_strbuf_get (sb), var->size, var->isarg, var->name);
 r_strbuf_free (sb);
}
