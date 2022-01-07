
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* DEFAULT_PORT ;
 char* MCAST_GROUP ;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*,char*) ;
 int stderr ;

void usage(char **argv) {
  fprintf(stderr, "%s: -i address_of_mcast_interface [ -g %s ] [ -p %s ]\n",
          argv[0], MCAST_GROUP, DEFAULT_PORT);
  exit(1);
}
