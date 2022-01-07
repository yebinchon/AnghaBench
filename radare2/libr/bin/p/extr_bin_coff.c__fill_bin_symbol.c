
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int f_nsyms; scalar_t__ f_nscns; } ;
struct r_bin_coff_obj {TYPE_2__* scn_hdrs; struct coff_symbol* symbols; TYPE_1__ hdr; } ;
struct coff_symbol {int n_sclass; int n_scnum; scalar_t__ n_value; } ;
struct TYPE_10__ {int constpool; } ;
struct TYPE_9__ {char* forwarder; char* type; int size; scalar_t__ ordinal; scalar_t__ paddr; int name; } ;
struct TYPE_8__ {scalar_t__ s_scnptr; } ;
typedef TYPE_3__ RBinSymbol ;
typedef TYPE_4__ RBin ;







 void* R_BIN_TYPE_FUNC_STR ;
 char* R_BIN_TYPE_SECTION_STR ;
 int free (char*) ;
 char* r_coff_symbol_name (struct r_bin_coff_obj*,struct coff_symbol*) ;
 char* r_str_constpool_get (int *,int ) ;
 int sdb_fmt (char*,int) ;
 int strdup (char*) ;

__attribute__((used)) static bool _fill_bin_symbol(RBin *rbin, struct r_bin_coff_obj *bin, int idx, RBinSymbol **sym) {
 RBinSymbol *ptr = *sym;
 struct coff_symbol *s = ((void*)0);
 if (idx < 0 || idx > bin->hdr.f_nsyms) {
  return 0;
 }
 if (!bin->symbols) {
  return 0;
 }
 s = &bin->symbols[idx];
 char *coffname = r_coff_symbol_name (bin, s);
 if (!coffname) {
  return 0;
 }
 ptr->name = strdup (coffname);
 free (coffname);
 ptr->forwarder = "NONE";

 switch (s->n_sclass) {
 case 130:
  ptr->type = R_BIN_TYPE_FUNC_STR;
  break;
 case 131:
  ptr->type = "FILE";
  break;
 case 129:
  ptr->type = R_BIN_TYPE_SECTION_STR;
  break;
 case 132:
  if (bin->symbols[idx].n_scnum) {
   ptr->type = R_BIN_TYPE_FUNC_STR;
  } else {
   ptr->type = "EXTERNAL";
  }
  break;
 case 128:
  ptr->type = "STATIC";
  break;
 default:
  ptr->type = r_str_constpool_get (&rbin->constpool, sdb_fmt ("%i", s->n_sclass));
  break;
 }
 if (bin->symbols[idx].n_scnum < bin->hdr.f_nscns + 1 &&
     bin->symbols[idx].n_scnum > 0) {

  ptr->paddr = bin->scn_hdrs[s->n_scnum - 1].s_scnptr + s->n_value;
 }
 ptr->size = 4;
 ptr->ordinal = 0;
 return 1;
}
