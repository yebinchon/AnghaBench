
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sock_t ;
typedef scalar_t__ pid_t ;
typedef int buf ;


 int EXIT_FAILURE ;
 int SIGCHLD ;
 int SIG_DFL ;
 int _exit (int ) ;
 int chdir (char const*) ;
 int closesocket (int ) ;
 int dup2 (int ,int) ;
 int errno ;
 int execle (char const*,char const*,char const*,...) ;
 scalar_t__ fork () ;
 int send (int,char*,int ,int ) ;
 int signal (int ,int ) ;
 int snprintf (char*,int,char*,char*,char*,char const*,int ) ;
 int strerror (int ) ;
 int strlen (char*) ;

__attribute__((used)) static int mg_start_process(const char *interp, const char *cmd,
                            const char *env, const char *envp[],
                            const char *dir, sock_t sock) {
  char buf[500];
  pid_t pid = fork();
  (void) env;

  if (pid == 0) {




    int tmp = chdir(dir);
    (void) tmp;
    (void) dup2(sock, 0);
    (void) dup2(sock, 1);
    closesocket(sock);







    signal(SIGCHLD, SIG_DFL);

    if (interp == ((void*)0)) {
      execle(cmd, cmd, (char *) 0, envp);
    } else {
      execle(interp, interp, cmd, (char *) 0, envp);
    }
    snprintf(buf, sizeof(buf),
             "Status: 500\r\n\r\n"
             "500 Server Error: %s%s%s: %s",
             interp == ((void*)0) ? "" : interp, interp == ((void*)0) ? "" : " ", cmd,
             strerror(errno));
    send(1, buf, strlen(buf), 0);
    _exit(EXIT_FAILURE);
  }

  return (pid != 0);
}
