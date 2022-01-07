
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int const) ;
 int printf (char*,char const*) ;

void run_screaming(const char* message, const int code) {
  printf("%s \n", message);
  exit(code);
}
