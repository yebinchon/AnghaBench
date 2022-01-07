
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 char* s_file_level ;
 char* strdup (char const*) ;

void cs_log_set_file_level(const char *file_level) {
  char *fl = s_file_level;
  if (file_level != ((void*)0)) {
    s_file_level = strdup(file_level);
  } else {
    s_file_level = ((void*)0);
  }
  free(fl);
}
