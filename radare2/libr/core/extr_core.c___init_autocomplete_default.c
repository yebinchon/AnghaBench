
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int autocomplete; } ;
typedef TYPE_1__ RCore ;


 int R_CORE_AUTOCMPLT_BRKP ;
 int R_CORE_AUTOCMPLT_DFLT ;
 int R_CORE_AUTOCMPLT_EVAL ;
 int R_CORE_AUTOCMPLT_FCN ;
 int R_CORE_AUTOCMPLT_FILE ;
 int R_CORE_AUTOCMPLT_FLAG ;
 int R_CORE_AUTOCMPLT_FLSP ;
 int R_CORE_AUTOCMPLT_MACR ;
 int R_CORE_AUTOCMPLT_MINS ;
 int R_CORE_AUTOCMPLT_MS ;
 int R_CORE_AUTOCMPLT_PRJT ;
 int R_CORE_AUTOCMPLT_SDB ;
 int R_CORE_AUTOCMPLT_SEEK ;
 int R_CORE_AUTOCMPLT_THME ;
 int R_CORE_AUTOCMPLT_ZIGN ;
 int __foreach (TYPE_1__*,char const**,int ) ;
 int r_core_autocomplete_add (int ,char*,int ,int) ;
 int r_core_autocomplete_find (int ,char*,int) ;
 int radare_argc ;
 char** radare_argv ;

__attribute__((used)) static void __init_autocomplete_default (RCore* core) {
 const char *fcns[] = {
  "afi", "afcf", "afn", ((void*)0)
 };
 const char *seeks[] = {
  "s", ((void*)0)
 };
 const char *flags[] = {
  "*", "s", "s+", "b", "f", "fg", "?", "?v", "ad", "bf", "c1", "db", "dbw",
  "f-", "fr", "tf", "/a", "/v", "/r", "/re", "aav", "aep", "aef", "afb",
  "afc", "axg", "axt", "axf", "dcu", "ag", "agfl", "aecu", "aesu", "aeim", ((void*)0)
 };
 const char *evals[] = {
  "e", "ee", "et", "e?", "e!", "ev", "evj", ((void*)0)
 };
 const char *breaks[] = {
  "db-", "dbc", "dbC", "dbd", "dbe", "dbs", "dbi", "dbte", "dbtd", "dbts", ((void*)0)
 };
 const char *files[] = {
  ".", "..", ".*", "/F", "/m", "!", "!!", "#!c", "#!v", "#!cpipe", "#!vala",
  "#!rust", "#!zig", "#!pipe", "#!python", "aeli", "arp", "dmd", "drp", "o",
  "idp", "idpi", "L", "obf", "o+", "oc", "r2", "rabin2", "rasm2", "rahash2", "rax2",
  "rafind2", "cd", "on", "op", "wf", "rm", "wF", "wp", "Sd", "Sl", "to", "pm",
  "/m", "zos", "zfd", "zfs", "zfz", "cat", "wta", "wtf", "wxf", "dml", "vi",
  "less", "head", "tail", ((void*)0)
 };
 const char *projs[] = {
  "Pc", "Pd", "Pi", "Po", "Ps", "P-", ((void*)0)
 };
 const char *mounts[] = {
  "md", "mg", "mo", "ms", "mc", "mi", "mw", ((void*)0)
 };
 __foreach (core, flags, R_CORE_AUTOCMPLT_FLAG);
 __foreach (core, seeks, R_CORE_AUTOCMPLT_SEEK);
 __foreach (core, fcns, R_CORE_AUTOCMPLT_FCN);
 __foreach (core, evals, R_CORE_AUTOCMPLT_EVAL);
 __foreach (core, breaks, R_CORE_AUTOCMPLT_BRKP);
 __foreach (core, files, R_CORE_AUTOCMPLT_FILE);
 __foreach (core, projs, R_CORE_AUTOCMPLT_PRJT);
 __foreach (core, mounts, R_CORE_AUTOCMPLT_MS);

 r_core_autocomplete_add (core->autocomplete, "-", R_CORE_AUTOCMPLT_MINS, 1);
 r_core_autocomplete_add (core->autocomplete, "zs", R_CORE_AUTOCMPLT_ZIGN, 1);
 r_core_autocomplete_add (core->autocomplete, "fs", R_CORE_AUTOCMPLT_FLSP, 1);
 r_core_autocomplete_add (
  r_core_autocomplete_add (core->autocomplete, "ls", R_CORE_AUTOCMPLT_DFLT, 1),
  "-l", R_CORE_AUTOCMPLT_FILE, 1);
 r_core_autocomplete_add (core->autocomplete, "eco", R_CORE_AUTOCMPLT_THME, 1);
 r_core_autocomplete_add (core->autocomplete, "k", R_CORE_AUTOCMPLT_SDB, 1);

 r_core_autocomplete_add (core->autocomplete, ".(", R_CORE_AUTOCMPLT_MACR, 1);
 r_core_autocomplete_add (core->autocomplete, "(-", R_CORE_AUTOCMPLT_MACR, 1);

 int i;
 for (i = 0; i < radare_argc && radare_argv[i]; i++) {
  if (!r_core_autocomplete_find (core->autocomplete, radare_argv[i], 1)) {
   r_core_autocomplete_add (core->autocomplete, radare_argv[i], R_CORE_AUTOCMPLT_DFLT, 1);
  }
 }
}
