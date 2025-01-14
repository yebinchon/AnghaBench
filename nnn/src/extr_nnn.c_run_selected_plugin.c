
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int name; } ;
struct TYPE_6__ {scalar_t__ ctxactive; } ;
struct TYPE_8__ {char* c_path; char* c_last; char* c_name; TYPE_1__ c_cfg; } ;
struct TYPE_7__ {int curctx; } ;


 int CTX_MAX ;
 int FALSE ;
 int F_NORMAL ;
 int NAME_MAX ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int PATH_MAX ;
 int TRUE ;
 TYPE_2__ cfg ;
 int close (int) ;
 size_t cur ;
 TYPE_4__* dents ;
 char* g_buf ;
 TYPE_3__* g_ctx ;
 int g_pipepath ;
 int g_plinit ;
 int mkpath (int ,char const*,char*) ;
 int open (int ,int) ;
 int plctrl_init () ;
 int plugindir ;
 size_t read (int,char*,int ) ;
 int savecurctx (TYPE_2__*,char*,int ,int) ;
 int spawn (char*,char*,char*,char*,int ) ;
 int xstrlcpy (char*,char*,int ) ;

__attribute__((used)) static bool run_selected_plugin(char **path, const char *file, char *newpath, char *runfile, char **lastname, char **lastdir)
{
 int fd;
 size_t len;

 if (!g_plinit) {
  plctrl_init();
  g_plinit = TRUE;
 }

 fd = open(g_pipepath, O_RDONLY | O_NONBLOCK);
 if (fd == -1)
  return FALSE;


 mkpath(plugindir, file, newpath);

 if (runfile && runfile[0]) {
  xstrlcpy(*lastname, runfile, NAME_MAX);
  spawn(newpath, *lastname, *path, *path, F_NORMAL);
 } else
  spawn(newpath, ((void*)0), *path, *path, F_NORMAL);

 len = read(fd, g_buf, PATH_MAX);
 g_buf[len] = '\0';

 close(fd);

 if (len > 1) {
  int ctx = g_buf[0] - '0';

  if (ctx == 0 || ctx == cfg.curctx + 1) {
   xstrlcpy(*lastdir, *path, PATH_MAX);
   xstrlcpy(*path, g_buf + 1, PATH_MAX);
  } else if (ctx >= 1 && ctx <= CTX_MAX) {
   int r = ctx - 1;

   g_ctx[r].c_cfg.ctxactive = 0;
   savecurctx(&cfg, g_buf + 1, dents[cur].name, r);
   *path = g_ctx[r].c_path;
   *lastdir = g_ctx[r].c_last;
   *lastname = g_ctx[r].c_name;
  }
 }

 return TRUE;
}
