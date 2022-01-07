
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isxdigit (char const) ;
 scalar_t__ r_str_startswith (char const*,char*) ;
 char* strchr (char const*,char) ;
 scalar_t__ strtol (char const*,int *,int) ;

int read_thread_id(const char *src, int *pid, int *tid, bool multiprocess) {
 char *ptr1;
 if (multiprocess && *src == 'p') {
  src++;
  if (!(ptr1 = strchr (src, '.'))) {
   return -1;
  }
  ptr1++;
  if (r_str_startswith (src, "-1")) {
   if (r_str_startswith (ptr1, "-1")) {
    *pid = *tid = -1;
    return 0;
   }
   return -1;
  }
  if (!isxdigit (*src)) {
   return -1;
  }
  if (r_str_startswith (ptr1, "-1")) {
   *pid = (int) strtol (src, ((void*)0), 16);
   *tid = -1;
   return 0;
  }
  if (!isxdigit (*ptr1)) {
   return -1;
  }
  *pid = (int) strtol (src, ((void*)0), 16);
  *tid = (int) strtol (ptr1, ((void*)0), 16);
  return 0;
 }
 if (r_str_startswith (src, "-1")) {
  *tid = -1;
  return 0;
 }
 if (!isxdigit (*src)) {
  return -1;
 }
 *pid = *tid = (int) strtol (src, ((void*)0), 16);
 return 0;
}
