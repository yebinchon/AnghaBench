
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WSADATA ;


 int MAKEWORD (int,int) ;
 scalar_t__ WSAStartup (int ,int *) ;
 int callback ;
 int errno ;
 int fprintf (int ,char*,...) ;
 scalar_t__ pg_foreach_ifaddr (int ,int *) ;
 int stderr ;
 char* strerror (int ) ;

int
main(int argc, char *argv[])
{
 if (pg_foreach_ifaddr(callback, ((void*)0)) < 0)
  fprintf(stderr, "pg_foreach_ifaddr failed: %s\n", strerror(errno));
 return 0;
}
