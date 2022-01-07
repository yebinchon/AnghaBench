
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int O_RDONLY ;
 int close (int) ;
 int free (char*) ;
 int r_sandbox_open (char*,int ,int ) ;
 char* r_str_newf (char*,int,char*) ;
 int r_sys_perror (char*) ;
 int read (int,char*,size_t) ;

int procfs_pid_slurp(int pid, char *prop, char *out, size_t len) {
 int fd, ret = -1;
 ssize_t nr;

 char *filename = r_str_newf ("/proc/%d/%s", pid, prop);
 if (!filename) {
  return -1;
 }
 fd = r_sandbox_open (filename, O_RDONLY, 0);
 if (fd == -1) {
  free (filename);
  return -1;
 }
 nr = read (fd, out, len);
 out[len - 1] = 0;
 if (nr > 0) {
  out[nr - 1] = '\0';
  ret = 0;
 } else if (nr < 0) {
  r_sys_perror ("read");
 }
 close (fd);
 free (filename);
 return ret;
}
