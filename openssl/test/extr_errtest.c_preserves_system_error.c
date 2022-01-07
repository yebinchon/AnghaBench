
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ERROR_INVALID_FUNCTION ;
 int ERR_get_error () ;
 int GetLastError () ;
 int SetLastError (int ) ;
 int TEST_int_eq (int ,int ) ;
 int errno ;

__attribute__((used)) static int preserves_system_error(void)
{





    errno = EINVAL;
    ERR_get_error();
    return TEST_int_eq(errno, EINVAL);

}
