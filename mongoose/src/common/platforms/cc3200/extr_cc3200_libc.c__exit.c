
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprint_str (int ,char*) ;
 int stderr ;

void _exit(int status) {
  fprint_str(stderr, "_exit\n");

  *(int *) 1 = status;
  while (1)
    ;
}
