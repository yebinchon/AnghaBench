
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int * cs_log_file ;

void cs_log_set_file(FILE *file) {
  cs_log_file = file;
}
