
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WindCtx ;
struct TYPE_8__ {TYPE_1__* io; } ;
struct TYPE_11__ {scalar_t__ pid; int bits; scalar_t__ arch; TYPE_2__ iob; } ;
struct TYPE_10__ {scalar_t__ data; TYPE_3__* plugin; } ;
struct TYPE_9__ {int name; } ;
struct TYPE_7__ {TYPE_4__* desc; } ;
typedef TYPE_4__ RIODesc ;
typedef TYPE_5__ RDebug ;


 int eprintf (char*) ;
 scalar_t__ strcmp (scalar_t__,char*) ;
 scalar_t__ strncmp (int ,char*,int) ;
 int * wctx ;
 int windbg_ctx_free (int **) ;
 int windbg_get_bits (int *) ;
 int windbg_read_ver (int *) ;
 int windbg_sync (int *) ;

__attribute__((used)) static int r_debug_windbg_attach(RDebug *dbg, int pid) {
 RIODesc *desc = dbg->iob.io->desc;

 if (!desc || !desc->plugin || !desc->plugin->name || !desc->data) {
  return 0;
 }
 if (strncmp (desc->plugin->name, "windbg", 6)) {
  return 0;
 }
 if (dbg->arch && strcmp (dbg->arch, "x86")) {
  return 0;
 }
 wctx = (WindCtx *)desc->data;


 if (!windbg_sync (wctx)) {
  eprintf ("Could not connect to windbg\n");
  windbg_ctx_free ((WindCtx **)&desc->data);
  return 0;
 }
 if (!windbg_read_ver (wctx)) {
  windbg_ctx_free ((WindCtx **)&desc->data);
  return 0;
 }
 dbg->bits = windbg_get_bits (wctx);

 dbg->pid = 0;
 return 1;
}
