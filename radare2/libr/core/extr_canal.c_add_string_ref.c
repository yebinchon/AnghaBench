
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_9__ {TYPE_1__* esil; } ;
struct TYPE_8__ {TYPE_3__* anal; int flags; } ;
struct TYPE_7__ {scalar_t__ address; } ;
typedef TYPE_2__ RCore ;


 int R_ANAL_REF_TYPE_DATA ;
 int R_FLAGS_FS_STRINGS ;
 scalar_t__ UT64_MAX ;
 int free (char*) ;
 char* is_string_at (TYPE_2__*,scalar_t__,int*) ;
 int r_anal_xrefs_set (TYPE_3__*,scalar_t__,scalar_t__,int ) ;
 int r_flag_set (int ,char*,scalar_t__,int) ;
 int r_flag_space_pop (int ) ;
 int r_flag_space_push (int ,int ) ;
 int r_meta_add (TYPE_3__*,char,scalar_t__,int ,char*) ;
 int r_name_filter (char*,int) ;
 char* sdb_fmt (char*,char*) ;

__attribute__((used)) static void add_string_ref(RCore *core, ut64 xref_from, ut64 xref_to) {
 int len = 0;
 if (xref_to == UT64_MAX || !xref_to) {
  return;
 }
 if (!xref_from || xref_from == UT64_MAX) {
  xref_from = core->anal->esil->address;
 }
 char *str_flagname = is_string_at (core, xref_to, &len);
 if (str_flagname) {
  r_anal_xrefs_set (core->anal, xref_from, xref_to, R_ANAL_REF_TYPE_DATA);
  r_name_filter (str_flagname, -1);
  char *flagname = sdb_fmt ("str.%s", str_flagname);
  r_flag_space_push (core->flags, R_FLAGS_FS_STRINGS);
  r_flag_set (core->flags, flagname, xref_to, len);
  r_flag_space_pop (core->flags);
  r_meta_add (core->anal, 's', xref_to, xref_to + len, str_flagname);
  free (str_flagname);
 }
}
