
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ request_uri; } ;


 TYPE_1__ SG (int ) ;
 int request_info ;

char *fpm_php_request_uri(void)
{
 return (char *) SG(request_info).request_uri;
}
