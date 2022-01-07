
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int va; scalar_t__ debug; } ;
struct TYPE_10__ {scalar_t__ i_value; } ;
struct TYPE_9__ {TYPE_2__* bin; scalar_t__ dbg; TYPE_1__* file; TYPE_5__* io; int config; } ;
struct TYPE_8__ {int is_debugger; } ;
struct TYPE_7__ {int fd; } ;
typedef TYPE_3__ RCore ;
typedef TYPE_4__ RConfigNode ;


 char const* r_config_get (int ,char*) ;
 int r_config_set (int ,char*,char*) ;
 int r_debug_select (scalar_t__,int ,int ) ;
 int r_debug_use (scalar_t__,char const*) ;
 int r_io_fd_get_pid (TYPE_5__*,int ) ;
 int r_io_fd_get_tid (TYPE_5__*,int ) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static bool cb_cfgdebug(void *user, void *data) {
 RCore *core = (RCore*) user;
 RConfigNode *node = (RConfigNode*) data;
 if (!core) {
  return 0;
 }
 if (core->io) {
  core->io->va = !node->i_value;
  core->io->debug = node->i_value;
 }
 if (core->dbg && node->i_value) {
  const char *dbgbackend = r_config_get (core->config, "dbg.backend");
  core->bin->is_debugger = 1;
  r_debug_use (core->dbg, dbgbackend);
  if (!strcmp (r_config_get (core->config, "cmd.prompt"), "")) {
   r_config_set (core->config, "cmd.prompt", ".dr*");
  }
  if (!strcmp (dbgbackend, "bf")) {
   r_config_set (core->config, "asm.arch", "bf");
  }
  if (core->file) {
   r_debug_select (core->dbg, r_io_fd_get_pid (core->io, core->file->fd),
     r_io_fd_get_tid (core->io, core->file->fd));
  }
 } else {
  r_debug_use (core->dbg, ((void*)0));
  core->bin->is_debugger = 0;
 }
 return 1;
}
