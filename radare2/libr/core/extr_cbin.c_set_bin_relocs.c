
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_13__ {TYPE_1__* import; scalar_t__ vaddr; } ;
struct TYPE_12__ {int flags; TYPE_2__* bin; int anal; int config; } ;
struct TYPE_11__ {char* prefix; int cur; } ;
struct TYPE_10__ {char* name; } ;
typedef int Sdb ;
typedef int RFlagItem ;
typedef TYPE_3__ RCore ;
typedef TYPE_4__ RBinReloc ;


 int R2_SDB_FORMAT ;
 int R_FLAG_NAME_SIZE ;
 int R_FREE (char*) ;
 int R_JOIN_4_PATHS (char*,int ,char*,char*) ;
 int R_META_TYPE_DATA ;
 int atoi (char*) ;
 int bin_reloc_size (TYPE_4__*) ;
 int free (char*) ;
 char* get_reloc_name (TYPE_3__*,TYPE_4__*,int ) ;
 int r_anal_hint_set_size (int ,scalar_t__,int) ;
 char* r_bin_demangle (int ,char const*,char*,int ,int) ;
 char* r_config_get (int ,char*) ;
 int r_config_get_i (int ,char*) ;
 scalar_t__ r_file_exists (char*) ;
 int r_flag_item_set_realname (int *,char*) ;
 int * r_flag_set (int ,char*,int ,int ) ;
 int r_meta_add (int ,int ,scalar_t__,scalar_t__,int *) ;
 int r_name_filter (char*,int ) ;
 int r_sandbox_enable (int ) ;
 int r_str_case (char*,int) ;
 void* r_str_newf (char*,char*,char*,...) ;
 char* r_sys_prefix (int *) ;
 char* resolveModuleOrdinal (int *,char*,int) ;
 char* sdb_fmt (char*,char const*,...) ;
 int sdb_free (int *) ;
 int * sdb_new (int *,char*,int ) ;
 int snprintf (char*,int,char*,char*,...) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (char*) ;
 int strlen (char const*) ;
 char* strstr (char*,char const*) ;

__attribute__((used)) static void set_bin_relocs(RCore *r, RBinReloc *reloc, ut64 addr, Sdb **db, char **sdb_module) {
 int bin_demangle = r_config_get_i (r->config, "bin.demangle");
 bool keep_lib = r_config_get_i (r->config, "bin.demangle.libs");
 const char *lang = r_config_get (r->config, "bin.lang");
 char *reloc_name, *demname = ((void*)0);
 bool is_pe = 1;
 int is_sandbox = r_sandbox_enable (0);

 if (reloc->import && reloc->import->name[0]) {
  char str[R_FLAG_NAME_SIZE];
  RFlagItem *fi;

  if (is_pe && !is_sandbox && strstr (reloc->import->name, "Ordinal")) {
   const char *TOKEN = ".dll_Ordinal_";
   char *module = strdup (reloc->import->name);
   char *import = strstr (module, TOKEN);

   r_str_case (module, 0);
   if (import) {
    char *filename = ((void*)0);
    int ordinal;
    *import = 0;
    import += strlen (TOKEN);
    ordinal = atoi (import);
    if (!*sdb_module || strcmp (module, *sdb_module)) {
     sdb_free (*db);
     *db = ((void*)0);
     free (*sdb_module);
     *sdb_module = strdup (module);

     filename = sdb_fmt ("%s.sdb", module);
     r_str_case (filename, 0);
     if (r_file_exists (filename)) {
      *db = sdb_new (((void*)0), filename, 0);
     } else {
      const char *dirPrefix = r_sys_prefix (((void*)0));
      filename = sdb_fmt (R_JOIN_4_PATHS ("%s", R2_SDB_FORMAT, "dll", "%s.sdb"),
       dirPrefix, module);
      if (r_file_exists (filename)) {
       *db = sdb_new (((void*)0), filename, 0);
      }
     }
    }
    if (*db) {

     char *symname = resolveModuleOrdinal (*db, module, ordinal - 1);
     if (symname) {
      if (r->bin->prefix) {
       reloc->import->name = r_str_newf
        ("%s.%s.%s", r->bin->prefix, module, symname);
      } else {
       reloc->import->name = r_str_newf
        ("%s.%s", module, symname);
      }
      R_FREE (symname);
     }
    }
   }
   free (module);
   r_anal_hint_set_size (r->anal, reloc->vaddr, 4);
   r_meta_add (r->anal, R_META_TYPE_DATA, reloc->vaddr, reloc->vaddr+4, ((void*)0));
  }
  reloc_name = reloc->import->name;
  if (r->bin->prefix) {
   snprintf (str, R_FLAG_NAME_SIZE, "%s.reloc.%s", r->bin->prefix, reloc_name);
  } else {
   snprintf (str, R_FLAG_NAME_SIZE, "reloc.%s", reloc_name);
  }
  if (bin_demangle) {
   demname = r_bin_demangle (r->bin->cur, lang, str, addr, keep_lib);
   if (demname) {
    snprintf (str, R_FLAG_NAME_SIZE, "reloc.%s", demname);
   }
  }
  r_name_filter (str, 0);
  fi = r_flag_set (r->flags, str, addr, bin_reloc_size (reloc));
  if (demname) {
   char *realname;
   if (r->bin->prefix) {
    realname = sdb_fmt ("%s.reloc.%s", r->bin->prefix, demname);
   } else {
    realname = sdb_fmt ("reloc.%s", demname);
   }
   r_flag_item_set_realname (fi, realname);
  }
  free (demname);
 } else {
  char *reloc_name = get_reloc_name (r, reloc, addr);
  if (reloc_name) {
   r_flag_set (r->flags, reloc_name, addr, bin_reloc_size (reloc));
  } else {

  }
 }
}
