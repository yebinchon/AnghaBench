
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {int d_name; } ;
typedef int ev_bits ;
typedef int DIR ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int EVIOCGBIT (int ,int) ;
 int EV_ABS ;
 int KEY_MAX ;
 int O_RDONLY ;
 int assert (int) ;
 int close (int) ;
 int closedir (int *) ;
 int dirfd (int *) ;
 int ioctl (int,int ,unsigned char*) ;
 int openat (int ,int ,int ) ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 scalar_t__ strncmp (int ,char*,int) ;

__attribute__((used)) static int find_dev() {
  int err;

  int ret = -1;

  DIR *dir = opendir("/dev/input");
  assert(dir);
  struct dirent* de = ((void*)0);
  while ((de = readdir(dir))) {
    if (strncmp(de->d_name, "event", 5)) continue;

    int fd = openat(dirfd(dir), de->d_name, O_RDONLY);
    assert(fd >= 0);

    unsigned char ev_bits[KEY_MAX / 8 + 1];
    err = ioctl(fd, EVIOCGBIT(EV_ABS, sizeof(ev_bits)), ev_bits);
    assert(err >= 0);

    const int x_key = ABS_MT_POSITION_X / 8;
    const int y_key = ABS_MT_POSITION_Y / 8;
    if ((ev_bits[x_key] & (ABS_MT_POSITION_X - x_key)) &&
        (ev_bits[y_key] & (ABS_MT_POSITION_Y - y_key))) {
      ret = fd;
      break;
    }
    close(fd);
  }
  closedir(dir);

  return ret;
}
