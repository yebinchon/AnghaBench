
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuntap {scalar_t__ fd; int * hand; } ;



__attribute__((used)) static inline bool
tuntap_defined(const struct tuntap *tt)
{



    return tt && tt->fd >= 0;

}
