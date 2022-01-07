
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {char* name; char* classname; char* dname; int vaddr; scalar_t__ paddr; int type; } ;
struct TYPE_11__ {TYPE_1__* bin; int config; } ;
struct TYPE_10__ {char const* name; int * demname; int * demflag; int * methflag; int * methname; int * classflag; int * classname; void* nameflag; } ;
struct TYPE_9__ {int cur; } ;
typedef TYPE_2__ SymName ;
typedef TYPE_3__ RCore ;
typedef TYPE_4__ RBinSymbol ;


 int MAXFLAG_LEN_DEFAULT ;
 void* construct_symbol_flagname (char const*,int *,int) ;
 char* getPrefixFor (int ) ;
 int * r_bin_demangle (int ,char const*,char const*,int ,int) ;
 int * r_bin_symbol_name (TYPE_4__*) ;
 int r_config_get_i (int ,char*) ;
 int r_name_filter (int *,int) ;
 void* r_str_newf (char*,int *,char const*) ;
 void* strdup (char*) ;
 int strlen (int *) ;

__attribute__((used)) static void snInit(RCore *r, SymName *sn, RBinSymbol *sym, const char *lang) {
 int bin_demangle = lang != ((void*)0);
 bool keep_lib = r_config_get_i (r->config, "bin.demangle.libs");
 if (!r || !sym || !sym->name) {
  return;
 }
 sn->name = strdup (sym->name);
 const char *pfx = getPrefixFor (sym->type);
 sn->nameflag = construct_symbol_flagname (pfx, r_bin_symbol_name (sym), MAXFLAG_LEN_DEFAULT);
 if (sym->classname && sym->classname[0]) {
  sn->classname = strdup (sym->classname);
  sn->classflag = r_str_newf ("sym.%s.%s", sn->classname, sn->name);
  r_name_filter (sn->classflag, MAXFLAG_LEN_DEFAULT);
  const char *name = sym->dname? sym->dname: sym->name;
  sn->methname = r_str_newf ("%s::%s", sn->classname, name);
  sn->methflag = r_str_newf ("sym.%s.%s", sn->classname, name);
  r_name_filter (sn->methflag, strlen (sn->methflag));
 } else {
  sn->classname = ((void*)0);
  sn->classflag = ((void*)0);
  sn->methname = ((void*)0);
  sn->methflag = ((void*)0);
 }
 sn->demname = ((void*)0);
 sn->demflag = ((void*)0);
 if (bin_demangle && sym->paddr) {
  sn->demname = r_bin_demangle (r->bin->cur, lang, sn->name, sym->vaddr, keep_lib);
  if (sn->demname) {
   sn->demflag = construct_symbol_flagname (pfx, sn->demname, -1);
  }
 }
}
