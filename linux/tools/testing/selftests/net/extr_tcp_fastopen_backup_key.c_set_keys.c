
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int buf ;


 char* PROC_FASTOPEN_KEY ;
 int SEEK_SET ;
 int SOL_TCP ;
 int TCP_FASTOPEN_KEY ;
 scalar_t__ do_rotate ;
 scalar_t__ do_sockopt ;
 int errno ;
 int error (int,int ,char*,...) ;
 int key_len ;
 int lseek (int ,int ,int ) ;
 int proc_fd ;
 scalar_t__ setsockopt (int,int ,int ,int*,int ) ;
 int snprintf (char*,int,char*,int,int,int,int,...) ;
 scalar_t__ write (int ,char*,int) ;

__attribute__((used)) static void set_keys(int fd, uint32_t *keys)
{
 char buf[128];

 if (do_sockopt) {
  if (setsockopt(fd, SOL_TCP, TCP_FASTOPEN_KEY, keys,
      key_len))
   error(1, errno, "Unable to set key");
  return;
 }
 if (do_rotate)
  snprintf(buf, 128, "%08x-%08x-%08x-%08x,%08x-%08x-%08x-%08x",
    keys[0], keys[1], keys[2], keys[3], keys[4], keys[5],
    keys[6], keys[7]);
 else
  snprintf(buf, 128, "%08x-%08x-%08x-%08x",
    keys[0], keys[1], keys[2], keys[3]);
 lseek(proc_fd, 0, SEEK_SET);
 if (write(proc_fd, buf, sizeof(buf)) <= 0)
  error(1, errno, "Unable to write %s", PROC_FASTOPEN_KEY);
}
