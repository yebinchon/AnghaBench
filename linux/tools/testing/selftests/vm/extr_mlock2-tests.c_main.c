
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ test_lock_onfault_of_present () ;
 scalar_t__ test_mlock_lock () ;
 scalar_t__ test_mlock_onfault () ;
 scalar_t__ test_mlockall (scalar_t__ (*) (int)) ;
 scalar_t__ test_munlockall () ;
 scalar_t__ test_vma_management (int) ;

int main(int argc, char **argv)
{
 int ret = 0;
 ret += test_mlock_lock();
 ret += test_mlock_onfault();
 ret += test_munlockall();
 ret += test_lock_onfault_of_present();
 ret += test_vma_management(1);
 ret += test_mlockall(test_vma_management);
 return ret;
}
