
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGINT ;
 int do_recv () ;
 int parse_opts (int,char**) ;
 int sigint_handler ;
 int signal (int ,int ) ;

int main(int argc, char **argv)
{
 parse_opts(argc, argv);

 signal(SIGINT, sigint_handler);

 do_recv();

 return 0;
}
