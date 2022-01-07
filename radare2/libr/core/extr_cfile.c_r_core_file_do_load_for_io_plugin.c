
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_16__ ;


typedef int ut64 ;
struct TYPE_31__ {int file; } ;
struct TYPE_30__ {int bits; int arch; } ;
struct TYPE_29__ {TYPE_6__* info; } ;
struct TYPE_28__ {int xtr_idx; } ;
struct TYPE_27__ {int name; } ;
struct TYPE_26__ {TYPE_16__* bin; int config; int io; } ;
struct TYPE_25__ {int fd; } ;
struct TYPE_24__ {void* maxstrbuf; void* minstrlen; int rawstr; } ;
typedef TYPE_1__ RCoreFile ;
typedef TYPE_2__ RCore ;
typedef TYPE_3__ RBinPlugin ;
typedef TYPE_4__ RBinOptions ;
typedef TYPE_5__ RBinObject ;
typedef TYPE_6__ RBinInfo ;
typedef TYPE_7__ RBinFile ;


 TYPE_7__* r_bin_cur (TYPE_16__*) ;
 TYPE_5__* r_bin_cur_object (TYPE_16__*) ;
 TYPE_3__* r_bin_file_cur_plugin (TYPE_7__*) ;
 int r_bin_open_io (TYPE_16__*,TYPE_4__*) ;
 int r_bin_options_init (TYPE_4__*,int,int ,int ,int ) ;
 void* r_config_get_i (int ,char*) ;
 int r_core_bin_set_arch_bits (TYPE_2__*,int ,int ,int ) ;
 int r_core_bin_set_env (TYPE_2__*,TYPE_7__*) ;
 int r_core_cmd0 (TYPE_2__*,char*) ;
 TYPE_1__* r_core_file_cur (TYPE_2__*) ;
 int r_io_use_fd (int ,int) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int r_core_file_do_load_for_io_plugin(RCore *r, ut64 baseaddr, ut64 loadaddr) {
 RCoreFile *cf = r_core_file_cur (r);
 int fd = cf ? cf->fd : -1;
 RBinFile *binfile = ((void*)0);
 int xtr_idx = 0;
 RBinPlugin *plugin;

 if (fd < 0) {
  return 0;
 }
 r_io_use_fd (r->io, fd);
 RBinOptions opt;
 r_bin_options_init (&opt, fd, baseaddr, loadaddr, r->bin->rawstr);
 opt.xtr_idx = xtr_idx;
 if (!r_bin_open_io (r->bin, &opt)) {

  return 0;
 }
 binfile = r_bin_cur (r->bin);
 r_core_bin_set_env (r, binfile);
 plugin = r_bin_file_cur_plugin (binfile);
 if (plugin && !strcmp (plugin->name, "any")) {
  RBinObject *obj = r_bin_cur_object (r->bin);
  RBinInfo *info = obj? obj->info: ((void*)0);
  if (!info) {
   return 0;
  }

  r_core_bin_set_arch_bits (r, binfile->file, info->arch, info->bits);



  r->bin->minstrlen = r_config_get_i (r->config, "bin.minstr");
  r->bin->maxstrbuf = r_config_get_i (r->config, "bin.maxstrbuf");
 } else if (binfile) {
  RBinObject *obj = r_bin_cur_object (r->bin);
  RBinInfo *info = obj? obj->info: ((void*)0);
  if (!info) {
   return 0;
  }
  if (plugin && strcmp (plugin->name, "any") && info) {
   r_core_bin_set_arch_bits (r, binfile->file,
    info->arch, info->bits);
  }
 }

 if (plugin && !strcmp (plugin->name, "dex")) {
  r_core_cmd0 (r, "\"(fix-dex,wx `ph sha1 $s-32 @32` @12 ; wx `ph adler32 $s-12 @12` @8)\"\n");
 }
 return 1;
}
