
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int first; unsigned int last; } ;
struct Source {TYPE_1__ ip; } ;



int is_my_ip(const struct Source *src, unsigned ip)
{
    return src->ip.first <= ip && ip <= src->ip.last;
}
