
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,int,char*,int,...) ;
 int strncpy (char*,char*,int) ;

int write_thread_id(char *dest, int len, int pid, int tid, bool multiprocess) {
 if (!multiprocess) {
  if (tid < 0) {
   strncpy (dest, "-1", len);
   return 0;
  }
  return snprintf (dest, len, "%x", tid);
 }
 if (pid <= 0) {
  return -1;
 }
 if (tid < 0) {
  return snprintf (dest, len, "p%x.-1", pid);
 }
 return snprintf (dest, len, "p%x.%x", pid, tid);
}
