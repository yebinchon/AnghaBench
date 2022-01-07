
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_4__ {int test_num; TYPE_1__ duration; } ;
struct testdev {char* name; int test; scalar_t__ forever; TYPE_2__ param; int ifnum; } ;


 int EOPNOTSUPP ;
 int O_RDWR ;
 int TEST_CASES ;
 int USBTEST_REQUEST ;
 int close (int) ;
 int errno ;
 int fflush (int ) ;
 int open (char*,int ) ;
 int perror (char*) ;
 int printf (char*,char*,int,int,...) ;
 int snprintf (char*,int,char*,int) ;
 int stdout ;
 scalar_t__ strerror_r (int,char*,int) ;
 int usbdev_ioctl (int,int ,int ,TYPE_2__*) ;

__attribute__((used)) static void *handle_testdev (void *arg)
{
 struct testdev *dev = arg;
 int fd, i;
 int status;

 if ((fd = open (dev->name, O_RDWR)) < 0) {
  perror ("can't open dev file r/w");
  return 0;
 }

restart:
 for (i = 0; i < TEST_CASES; i++) {
  if (dev->test != -1 && dev->test != i)
   continue;
  dev->param.test_num = i;

  status = usbdev_ioctl (fd, dev->ifnum,
    USBTEST_REQUEST, &dev->param);
  if (status < 0 && errno == EOPNOTSUPP)
   continue;




  if (status < 0) {
   char buf [80];
   int err = errno;

   if (strerror_r (errno, buf, sizeof buf)) {
    snprintf (buf, sizeof buf, "error %d", err);
    errno = err;
   }
   printf ("%s test %d --> %d (%s)\n",
    dev->name, i, errno, buf);
  } else
   printf ("%s test %d, %4d.%.06d secs\n", dev->name, i,
    (int) dev->param.duration.tv_sec,
    (int) dev->param.duration.tv_usec);

  fflush (stdout);
 }
 if (dev->forever)
  goto restart;

 close (fd);
 return arg;
}
