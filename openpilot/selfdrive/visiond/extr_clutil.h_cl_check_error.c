
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* cl_get_error_string (int) ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static inline int cl_check_error(int err) {
  if (err != 0) {
    fprintf(stderr, "%s\n", cl_get_error_string(err));
    exit(1);
  }
  return err;
}
