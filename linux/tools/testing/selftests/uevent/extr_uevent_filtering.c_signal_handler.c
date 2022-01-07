
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int SIGTERM ;
 int _exit (int ) ;

__attribute__((used)) static void signal_handler(int sig)
{
 if (sig == SIGTERM)
  _exit(EXIT_SUCCESS);

 _exit(EXIT_FAILURE);
}
