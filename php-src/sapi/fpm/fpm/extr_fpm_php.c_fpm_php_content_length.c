
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t content_length; } ;


 TYPE_1__ SG (int ) ;
 int request_info ;

size_t fpm_php_content_length(void)
{
 return SG(request_info).content_length;
}
