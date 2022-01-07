
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* auth_user; } ;


 TYPE_1__ SG (int ) ;
 int request_info ;

char *fpm_php_auth_user(void)
{
 return SG(request_info).auth_user;
}
