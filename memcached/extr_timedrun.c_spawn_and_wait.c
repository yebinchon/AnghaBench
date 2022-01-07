
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int EX_OSERR ;
 int EX_SOFTWARE ;
 int execvp (char*,char**) ;
 int fork () ;
 int perror (char*) ;
 int wait_for_process (int) ;

__attribute__((used)) static int spawn_and_wait(char **argv)
{
    int rv = EX_SOFTWARE;
    pid_t pid = fork();

    switch (pid) {
    case -1:
        perror("fork");
        rv = EX_OSERR;
        break;
    case 0:
        execvp(argv[0], argv);
        perror("exec");
        rv = EX_SOFTWARE;
        break;
    default:
        rv = wait_for_process(pid);
    }
    return rv;
}
