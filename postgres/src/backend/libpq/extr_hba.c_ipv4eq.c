
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;



__attribute__((used)) static bool
ipv4eq(struct sockaddr_in *a, struct sockaddr_in *b)
{
 return (a->sin_addr.s_addr == b->sin_addr.s_addr);
}
