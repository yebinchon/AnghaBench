
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ap_get_server_banner () ;
 scalar_t__ ap_get_server_version () ;

__attribute__((used)) static char *php_apache_get_version()
{



 return (char *) ap_get_server_version();

}
