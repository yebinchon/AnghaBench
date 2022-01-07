
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_7__ ;
typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;
typedef struct TYPE_26__ TYPE_17__ ;


typedef int ut64 ;
struct TYPE_33__ {int file; } ;
struct TYPE_32__ {int bits; int arch; } ;
struct TYPE_31__ {TYPE_6__* info; } ;
struct TYPE_30__ {int xtr_idx; } ;
struct TYPE_29__ {char* name; } ;
struct TYPE_28__ {TYPE_17__* bin; int config; int io; int dbg; } ;
struct TYPE_27__ {int fd; } ;
struct TYPE_26__ {void* maxstrbuf; void* minstrlen; } ;
typedef int RIODesc ;
typedef TYPE_1__ RCoreFile ;
typedef TYPE_2__ RCore ;
typedef TYPE_3__ RBinPlugin ;
typedef TYPE_4__ RBinOptions ;
typedef TYPE_5__ RBinObject ;
typedef TYPE_6__ RBinInfo ;
typedef TYPE_7__ RBinFile ;


 int UT64_MAX ;
 int eprintf (char*,char const*) ;
 int get_base_from_maps (TYPE_2__*,char const*) ;
 TYPE_7__* r_bin_cur (TYPE_17__*) ;
 TYPE_5__* r_bin_cur_object (TYPE_17__*) ;
 TYPE_3__* r_bin_file_cur_plugin (TYPE_7__*) ;
 int r_bin_open (TYPE_17__*,char const*,TYPE_4__*) ;
 int r_bin_options_init (TYPE_4__*,int,int ,int ,int) ;
 scalar_t__* r_config_get (int ,char*) ;
 void* r_config_get_i (int ,char*) ;
 int r_config_set_i (int ,char*,int ) ;
 int r_core_bin_set_arch_bits (TYPE_2__*,int ,int ,int ) ;
 int r_core_bin_set_env (TYPE_2__*,TYPE_7__*) ;
 int r_core_cmd0 (TYPE_2__*,char*) ;
 TYPE_1__* r_core_file_cur (TYPE_2__*) ;
 int r_debug_select (int ,int ,int ) ;
 int * r_io_desc_get (int ,int) ;
 int r_io_fd_get_pid (int ,int) ;
 int r_io_fd_get_tid (int ,int) ;
 int setbpint (TYPE_2__*,char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strncmp (char*,char const*,int) ;

__attribute__((used)) static int r_core_file_do_load_for_debug(RCore *r, ut64 baseaddr, const char *filenameuri) {
 RCoreFile *cf = r_core_file_cur (r);
 RIODesc *desc = cf ? r_io_desc_get (r->io, cf->fd) : ((void*)0);
 RBinFile *binfile = ((void*)0);
 RBinPlugin *plugin;
 int xtr_idx = 0;


 if (!strncmp ("dbg://", filenameuri, 6)) {
  filenameuri += 6;
 }
 if (!desc) {
  return 0;
 }
 if (cf) {
  r_debug_select (r->dbg, r_io_fd_get_pid (r->io, cf->fd),
    r_io_fd_get_tid (r->io, cf->fd));
 }
 int fd = cf? cf->fd: -1;
 RBinOptions opt;
 r_bin_options_init (&opt, fd, baseaddr, UT64_MAX, 0);
 opt.xtr_idx = xtr_idx;
 if (!r_bin_open (r->bin, filenameuri, &opt)) {
  eprintf ("RBinLoad: Cannot open %s\n", filenameuri);
  if (r_config_get_i (r->config, "bin.rawstr")) {
   r_bin_options_init (&opt, fd, baseaddr, UT64_MAX, 1);
   opt.xtr_idx = xtr_idx;
   if (!r_bin_open (r->bin, filenameuri, &opt)) {
    return 0;
   }
  }
 }

 if (*r_config_get (r->config, "dbg.libs")) {
  r_core_cmd0 (r, ".dmm*");

  setbpint (r, "dbg.libs", "sym.imp.dlopen");
  setbpint (r, "dbg.libs", "sym.imp.dlmopen");
  setbpint (r, "dbg.unlibs", "sym.imp.dlclose");




 }
 binfile = r_bin_cur (r->bin);
 r_core_bin_set_env (r, binfile);
 plugin = r_bin_file_cur_plugin (binfile);
 if (plugin && !strncmp (plugin->name, "any", 5)) {




  r->bin->minstrlen = r_config_get_i (r->config, "bin.minstr");
  r->bin->maxstrbuf = r_config_get_i (r->config, "bin.maxstrbuf");
 } else if (binfile) {
  RBinObject *obj = r_bin_cur_object (r->bin);
  RBinInfo *info = obj? obj->info: ((void*)0);
  if (plugin && strcmp (plugin->name, "any") && info) {
   r_core_bin_set_arch_bits (r, binfile->file, info->arch, info->bits);
  }
 }

 if (plugin && !strcmp (plugin->name, "dex")) {
  r_core_cmd0 (r, "\"(fix-dex,wx `ph sha1 $s-32 @32` @12 ; wx `ph adler32 $s-12 @12` @8)\"\n");
 }

 return 1;
}
