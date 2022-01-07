
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_desc {int dummy; } ;


 int SYS_modify_ldt ;
 int errno ;
 int syscall (int ,int,struct user_desc*,unsigned long) ;

__attribute__((used)) static int safe_modify_ldt(int func, struct user_desc *ptr,
      unsigned long bytecount)
{
 int ret = syscall(SYS_modify_ldt, 0x11, ptr, bytecount);
 if (ret < -1)
  errno = -ret;
 return ret;
}
