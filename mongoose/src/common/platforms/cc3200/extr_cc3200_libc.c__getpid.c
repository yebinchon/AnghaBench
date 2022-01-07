
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprint_str (int ,char*) ;
 int stderr ;

int _getpid() {
  fprint_str(stderr, "_getpid is not implemented\n");
  return 42;
}
