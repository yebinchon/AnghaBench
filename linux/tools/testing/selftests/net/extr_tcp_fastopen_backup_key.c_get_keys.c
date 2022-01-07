
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int socklen_t ;
typedef int buf ;


 int KEY_LENGTH ;
 char* PROC_FASTOPEN_KEY ;
 int SEEK_SET ;
 int SOL_TCP ;
 int TCP_FASTOPEN_KEY ;
 scalar_t__ do_sockopt ;
 int errno ;
 int error (int,int ,char*,...) ;
 scalar_t__ getsockopt (int,int ,int ,int *,int*) ;
 int lseek (int ,int ,int ) ;
 int proc_fd ;
 scalar_t__ read (int ,char*,int) ;
 int sscanf (char*,char*,int *,int *,int *,int *,int *,int *,int *,int *) ;

__attribute__((used)) static void get_keys(int fd, uint32_t *keys)
{
 char buf[128];
 socklen_t len = KEY_LENGTH * 2;

 if (do_sockopt) {
  if (getsockopt(fd, SOL_TCP, TCP_FASTOPEN_KEY, keys, &len))
   error(1, errno, "Unable to get key");
  return;
 }
 lseek(proc_fd, 0, SEEK_SET);
 if (read(proc_fd, buf, sizeof(buf)) <= 0)
  error(1, errno, "Unable to read %s", PROC_FASTOPEN_KEY);
 if (sscanf(buf, "%x-%x-%x-%x,%x-%x-%x-%x", keys, keys + 1, keys + 2,
     keys + 3, keys + 4, keys + 5, keys + 6, keys + 7) != 8)
  error(1, 0, "Unable to parse %s", PROC_FASTOPEN_KEY);
}
