
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_CLI ;
 int F_CONFIRM ;
 size_t NCUR ;
 int * envs ;
 int setenv (int ,char const*,int) ;
 int shell ;
 int spawn (int ,char*,char*,char const*,int) ;

__attribute__((used)) static void prompt_run(char *cmd, const char *cur, const char *path)
{
 setenv(envs[NCUR], cur, 1);
 spawn(shell, "-c", cmd, path, F_CLI | F_CONFIRM);
}
