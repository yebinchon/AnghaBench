
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int err (int,char*,char* const) ;
 int execve (char* const,char* const*,char* const*) ;
 scalar_t__ fork () ;
 int fprintf (int ,char*,char* const) ;
 int stderr ;
 scalar_t__ waitpid (scalar_t__,int*,int ) ;
 int warn (char*,char* const) ;

__attribute__((used)) static int
run_script(char *const *argv, char *const *envp)
{
    pid_t pid;
    int ret = 0;

    pid = fork();
    if (pid == (pid_t)0)
    {
        execve(argv[0], argv, envp);

        err(127, "DOWN-ROOT: Failed execute: %s", argv[0]);
    }
    else if (pid < (pid_t)0)
    {
        warn("DOWN-ROOT: Failed to fork child to run %s", argv[0]);
        return -1;
    }
    else
    {
        if (waitpid(pid, &ret, 0) != pid)
        {

            fprintf(stderr, "DOWN-ROOT: waitpid() failed, don't know exit code of child (%s)\n", argv[0]);
            return -1;
        }
    }
    return ret;
}
