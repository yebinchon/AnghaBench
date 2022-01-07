
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuntap {int dummy; } ;
struct route_list {int dummy; } ;



__attribute__((used)) static inline bool
test_routes(const struct route_list *rl, const struct tuntap *tt)
{
    return 1;
}
