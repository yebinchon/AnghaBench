
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct sigaction {int sa_handler; } ;
typedef int mmask_t ;
struct TYPE_4__ {int blkorder; int showdetail; int filtermode; int cliopener; int filtercmd; int showhidden; int nonavopen; int picker; int pickraw; int useeditor; int trash; int autoselect; int filter_re; int mtime; } ;
struct TYPE_3__ {char color; } ;


 int BM_MAX ;
 int CTX_MAX ;
 int DPRINTF_S (char*) ;
 int DPRINTF_U (scalar_t__) ;
 size_t EDITOR ;
 int FALSE ;
 int F_NOWAIT ;
 int IN_NONBLOCK ;
 int LC_ALL ;
 size_t NNNLVL ;
 size_t NNN_BMS ;
 size_t NNN_CONTEXT_COLORS ;
 size_t NNN_COPIER ;
 size_t NNN_IDLE_TIMEOUT ;
 size_t NNN_OPENER ;
 size_t NNN_TRASH ;
 size_t NNN_USE_EDITOR ;
 size_t OPENER ;
 int O_CREAT ;
 int O_WRONLY ;
 size_t PAGER ;
 int PATH_MAX ;
 int PLUGIN_MAX ;
 size_t SHELL ;
 int SIGINT ;
 int SIGQUIT ;
 int SIG_IGN ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 size_t STR_INVBM_KEY ;
 int S_BLKSIZE ;
 scalar_t__ S_ISREG (int ) ;
 int TRUE ;
 char* VERSION ;
 size_t VISUAL ;
 int _FAILURE ;
 int _SUCCESS ;
 int atexit (int ) ;
 int blk_shift ;
 int bmstr ;
 int bookmark ;
 int browse (char*,char*) ;
 TYPE_2__ cfg ;
 int cfgdir ;
 int check_key_collision () ;
 int cleanup ;
 int close (scalar_t__) ;
 int * cmpfn ;
 char* copier ;
 char* cp ;
 char* editor ;
 int enabledbg () ;
 char** env_cfg ;
 char** envs ;
 scalar_t__ event_fd ;
 int exit (int) ;
 int exitcurses () ;
 int ffs (int ) ;
 int * filterfn ;
 int fprintf (int ,char*,...) ;
 int free (int ) ;
 int g_buf ;
 TYPE_1__* g_ctx ;
 void* g_selpath ;
 char* get_kv_val (int ,int *,char,int ,int) ;
 char* getcwd (int *,int ) ;
 char* getenv (char*) ;
 int getopt (int,char**,char*) ;
 char* home ;
 scalar_t__ idletimeout ;
 int initcurses (int *) ;
 char* initpath ;
 scalar_t__ inotify_fd ;
 scalar_t__ inotify_init1 (int ) ;
 int inotify_rm_watch (scalar_t__,scalar_t__) ;
 scalar_t__ inotify_wd ;
 scalar_t__ isatty (int ) ;
 scalar_t__ kq ;
 scalar_t__ kqueue () ;
 char** messages ;
 int mkpath (int ,char*,int ) ;
 int mousemask (int ,int *) ;
 char* mv ;
 int nftw_fn ;
 int open (char*,int,int) ;
 char* opener ;
 char* optarg ;
 int optind ;
 char* pager ;
 int parsekvpair (int ,int *,char*,int ) ;
 int plug ;
 int pluginstr ;
 int printent_long ;
 int * printptr ;
 int pselbuf ;
 int read_history (int ) ;
 void* realpath (char*,int *) ;
 int rl_bind_key (char,int ) ;
 scalar_t__ rl_change_environment ;
 int rl_complete ;
 int rl_menu_complete ;
 int rl_variable_bind (char*,char*) ;
 scalar_t__ selbufpos ;
 int seltofile (int,int *) ;
 int set_tmp_path () ;
 int setenv (char*,int ,int) ;
 int setlocale (int ,char*) ;
 int setup_config () ;
 char* shell ;
 scalar_t__ sigaction (int ,struct sigaction*,int *) ;
 int sigint_handler ;
 int signal (int ,int ) ;
 int spawn (char*,char*,int *,int *,int ) ;
 int stat (char*,struct stat*) ;
 int stderr ;
 int stdout ;
 int strlen (char*) ;
 int strncmp (char*,char*,int) ;
 int sum_bsizes ;
 int unlink (void*) ;
 int usage () ;
 char** utils ;
 int visible_str ;
 int write_history (int ) ;
 scalar_t__ xatoi (char*) ;
 int xdiraccess (char*) ;
 int xerror () ;
 char* xgetenv (char*,char*) ;
 scalar_t__ xgetenv_set (char*) ;
 int xitoa (scalar_t__) ;
 int xstrverscasecmp ;

int main(int argc, char *argv[])
{
 mmask_t mask;
 char *arg = ((void*)0);
 char *session = ((void*)0);
 int opt;

 bool progress = FALSE;


 while ((opt = getopt(argc, argv, "HSKiab:cde:fnop:rstvh")) != -1) {
  switch (opt) {
  case 'S':
   cfg.blkorder = 1;
   nftw_fn = sum_bsizes;
   blk_shift = ffs(S_BLKSIZE) - 1;
  case 'd':
   cfg.showdetail = 1;
   printptr = &printent_long;
   break;
  case 'i':
   cfg.filtermode = 1;
   break;
  case 'a':
   cfg.mtime = 0;
   break;
  case 'b':
   arg = optarg;
   break;
  case 'c':
   cfg.cliopener = 1;
   break;
  case 'e':
   session = optarg;
   break;
  case 'f':
   cfg.filtercmd = 1;
   break;
  case 'H':
   cfg.showhidden = 1;
   break;
  case 'n':
   cmpfn = &xstrverscasecmp;
   break;
  case 'o':
   cfg.nonavopen = 1;
   break;
  case 'p':
   cfg.picker = 1;
   if (optarg[0] == '-' && optarg[1] == '\0')
    cfg.pickraw = 1;
   else {
    int fd = open(optarg, O_WRONLY | O_CREAT, 0600);

    if (fd == -1) {
     xerror();
     return _FAILURE;
    }

    close(fd);
    g_selpath = realpath(optarg, ((void*)0));
    unlink(g_selpath);
   }
   break;
  case 'r':

   progress = TRUE;

   break;
  case 's':
   cfg.filter_re = 0;
   filterfn = &visible_str;
   break;
  case 't':
   cfg.autoselect = 0;
   break;
  case 'K':
   check_key_collision();
   return _SUCCESS;
  case 'v':
   fprintf(stdout, "%s\n", VERSION);
   return _SUCCESS;
  case 'h':
   usage();
   return _SUCCESS;
  default:
   usage();
   return _FAILURE;
  }
 }


 if (!cfg.picker && !(isatty(STDIN_FILENO) && isatty(STDOUT_FILENO)))
  exit(1);


 copier = xgetenv(env_cfg[NNN_CONTEXT_COLORS], "4444");
 opt = 0;
 while (opt < CTX_MAX) {
  if (*copier) {
   if (*copier < '0' || *copier > '7') {
    fprintf(stderr, "0 <= code <= 7\n");
    return _FAILURE;
   }

   g_ctx[opt].color = *copier - '0';
   ++copier;
  } else
   g_ctx[opt].color = 4;

  ++opt;
 }






 atexit(cleanup);

 home = getenv("HOME");
 if (!home) {
  fprintf(stderr, "set HOME\n");
  return _FAILURE;
 }
 DPRINTF_S(home);

 if (!setup_config())
  return _FAILURE;


 opener = xgetenv(env_cfg[NNN_OPENER], utils[OPENER]);
 DPRINTF_S(opener);


 if (!parsekvpair(bookmark, &bmstr, env_cfg[NNN_BMS], BM_MAX)) {
  fprintf(stderr, "%s\n", env_cfg[NNN_BMS]);
  return _FAILURE;
 }


 if (!parsekvpair(plug, &pluginstr, "NNN_PLUG", PLUGIN_MAX)) {
  fprintf(stderr, "%s\n", "NNN_PLUG");
  return _FAILURE;
 }

 if (arg) {
  if (!arg[1])
   initpath = get_kv_val(bookmark, ((void*)0), *arg, BM_MAX, TRUE);

  if (!initpath) {
   fprintf(stderr, "%s\n", messages[STR_INVBM_KEY]);
   return _FAILURE;
  }
 } else if (argc == optind) {

  initpath = getcwd(((void*)0), PATH_MAX);
  if (!initpath)
   initpath = "/";
 } else {
  arg = argv[optind];
  if (strlen(arg) > 7 && !strncmp(arg, "file://", 7))
   arg = arg + 7;
  initpath = realpath(arg, ((void*)0));
  DPRINTF_S(initpath);
  if (!initpath) {
   xerror();
   return _FAILURE;
  }






  struct stat sb;

  if (stat(initpath, &sb) == -1) {
   xerror();
   return _FAILURE;
  }

  if (S_ISREG(sb.st_mode)) {
   spawn(opener, arg, ((void*)0), ((void*)0), F_NOWAIT);
   return _SUCCESS;
  }
 }


 if (!cfg.cliopener && xgetenv_set(env_cfg[NNN_USE_EDITOR]))
  cfg.useeditor = 1;


 editor = xgetenv(envs[VISUAL], xgetenv(envs[EDITOR], "vi"));
 DPRINTF_S(getenv(envs[VISUAL]));
 DPRINTF_S(getenv(envs[EDITOR]));
 DPRINTF_S(editor);


 pager = xgetenv(envs[PAGER], "less");
 DPRINTF_S(pager);


 shell = xgetenv(envs[SHELL], "sh");
 DPRINTF_S(shell);

 DPRINTF_S(getenv("PWD"));
 idletimeout = xatoi(getenv(env_cfg[NNNLVL]));
 setenv(env_cfg[NNNLVL], xitoa(++idletimeout), 1);


 idletimeout = xatoi(getenv(env_cfg[NNN_IDLE_TIMEOUT]));
 DPRINTF_U(idletimeout);

 if (xgetenv_set(env_cfg[NNN_TRASH]))
  cfg.trash = 1;


 if (!set_tmp_path())
  return _FAILURE;


 copier = getenv(env_cfg[NNN_COPIER]);


 if (!progress) {
  cp[5] = cp[4];
  cp[2] = cp[4] = ' ';

  mv[5] = mv[4];
  mv[2] = mv[4] = ' ';
 }



 struct sigaction act = {.sa_handler = sigint_handler};

 if (sigaction(SIGINT, &act, ((void*)0)) < 0) {
  xerror();
  return _FAILURE;
 }
 signal(SIGQUIT, SIG_IGN);


 if (!xdiraccess(initpath)) {
  xerror();
  return _FAILURE;
 }



 setlocale(LC_ALL, "");
 rl_variable_bind("completion-ignore-case", "on");

 rl_bind_key('\t', rl_menu_complete);



 mkpath(cfgdir, ".history", g_buf);
 read_history(g_buf);


 if (!initcurses(&mask))
  return _FAILURE;

 browse(initpath, session);
 mousemask(mask, ((void*)0));
 exitcurses();


 mkpath(cfgdir, ".history", g_buf);
 write_history(g_buf);


 if (cfg.pickraw) {
  if (selbufpos) {
   opt = seltofile(1, ((void*)0));
   if (opt != (int)(selbufpos))
    xerror();
  }
 } else if (!cfg.picker && g_selpath)
  unlink(g_selpath);


 free(pselbuf);
 return _SUCCESS;
}
