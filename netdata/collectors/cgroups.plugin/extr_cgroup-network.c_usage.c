
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 char* program_name ;
 int stderr ;

void usage(void) {
    fprintf(stderr, "%s [ -p PID | --pid PID | --cgroup /path/to/cgroup ]\n", program_name);
    exit(1);
}
