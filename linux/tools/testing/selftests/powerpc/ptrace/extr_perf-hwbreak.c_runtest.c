
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dawr_supported () ;
 int runtestsingle (int,int,int) ;

__attribute__((used)) static int runtest(void)
{
 int rwflag;
 int exclude_user;
 int ret;





 for (rwflag = 1 ; rwflag < 4; rwflag++) {
  for (exclude_user = 0 ; exclude_user < 2; exclude_user++) {
   ret = runtestsingle(rwflag, exclude_user, 0);
   if (ret)
    return ret;


   if (!dawr_supported())
    continue;
   ret = runtestsingle(rwflag, exclude_user, 1);
   if (ret)
    return ret;
  }
 }
 return 0;
}
