
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Source {int dummy; } ;


 scalar_t__ is_my_ip (struct Source const*,unsigned int) ;
 scalar_t__ is_my_port (struct Source const*,unsigned int) ;

int is_myself(const struct Source *src, unsigned ip, unsigned port)
{
    return is_my_ip(src, ip) && is_my_port(src, port);
}
