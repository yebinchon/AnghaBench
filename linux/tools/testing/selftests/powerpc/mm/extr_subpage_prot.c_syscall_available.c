
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENOENT ;
 scalar_t__ ENOSYS ;
 int __NR_subpage_prot ;
 scalar_t__ errno ;
 int syscall (int ,int ,int ,int ) ;

__attribute__((used)) static int syscall_available(void)
{
 int rc;

 errno = 0;
 rc = syscall(__NR_subpage_prot, 0, 0, 0);

 return rc == 0 || (errno != ENOENT && errno != ENOSYS);
}
