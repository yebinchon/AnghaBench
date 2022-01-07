
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_password ;
 int check_password_hook ;
 int prev_check_password_hook ;

void
_PG_init(void)
{

 prev_check_password_hook = check_password_hook;
 check_password_hook = check_password;
}
