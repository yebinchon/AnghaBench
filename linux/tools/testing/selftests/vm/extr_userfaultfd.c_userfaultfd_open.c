
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uffdio_api {scalar_t__ api; int features; } ;


 int F_GETFD ;
 int O_CLOEXEC ;
 int O_NONBLOCK ;
 int UFFDIO_API ;
 scalar_t__ UFFD_API ;
 int __NR_userfaultfd ;
 int fcntl (scalar_t__,int ,int *) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ ioctl (scalar_t__,int ,struct uffdio_api*) ;
 int stderr ;
 scalar_t__ syscall (int ,int) ;
 scalar_t__ uffd ;
 int uffd_flags ;

__attribute__((used)) static int userfaultfd_open(int features)
{
 struct uffdio_api uffdio_api;

 uffd = syscall(__NR_userfaultfd, O_CLOEXEC | O_NONBLOCK);
 if (uffd < 0) {
  fprintf(stderr,
   "userfaultfd syscall not available in this kernel\n");
  return 1;
 }
 uffd_flags = fcntl(uffd, F_GETFD, ((void*)0));

 uffdio_api.api = UFFD_API;
 uffdio_api.features = features;
 if (ioctl(uffd, UFFDIO_API, &uffdio_api)) {
  fprintf(stderr, "UFFDIO_API\n");
  return 1;
 }
 if (uffdio_api.api != UFFD_API) {
  fprintf(stderr, "UFFDIO_API error %Lu\n", uffdio_api.api);
  return 1;
 }

 return 0;
}
