
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_LEN_MAX ;
 size_t NNN_PIPE ;
 int TRUE ;
 int _FAILURE ;
 int _SUCCESS ;
 int * env_cfg ;
 int g_buf ;
 int g_pipepath ;
 char* g_tmpfpath ;
 int g_tmpfplen ;
 int getpid () ;
 scalar_t__ mkfifo (int ,int) ;
 int mkpath (char*,int ,int ) ;
 int setenv (int ,int ,int ) ;
 int snprintf (int ,int ,char*,int) ;
 int unlink (int ) ;

__attribute__((used)) static bool plctrl_init(void)
{
 snprintf(g_buf, CMD_LEN_MAX, "nnn-pipe.%d", getpid());

 g_tmpfpath[g_tmpfplen - 1] = '\0';
 mkpath(g_tmpfpath, g_buf, g_pipepath);
 unlink(g_pipepath);
 if (mkfifo(g_pipepath, 0600) != 0)
  return _FAILURE;

 setenv(env_cfg[NNN_PIPE], g_pipepath, TRUE);

 return _SUCCESS;
}
