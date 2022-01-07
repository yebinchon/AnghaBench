
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int anal; } ;
typedef int RListFree ;
typedef int RList ;
typedef TYPE_1__ RCore ;


 int eprintf (char*) ;
 scalar_t__ free ;
 int r_list_append (int *,int ) ;
 int r_list_free (int *) ;
 int * r_list_newf (int ) ;
 int r_sign_add_xrefs (int ,char const*,int *) ;
 int r_str_new (int ) ;
 int r_str_word_get0 (char const*,int) ;

__attribute__((used)) static bool addXRefsZign(RCore *core, const char *name, const char *args0, int nargs) {
 int i = 0;
 if (nargs < 1) {
  eprintf ("error: invalid syntax\n");
  return 0;
 }

 RList *refs = r_list_newf ((RListFree) free);
 for (i = 0; i < nargs; i++) {
  r_list_append (refs, r_str_new (r_str_word_get0 (args0, i)));
 }

 bool retval = r_sign_add_xrefs (core->anal, name, refs);
 r_list_free (refs);
 return retval;
}
