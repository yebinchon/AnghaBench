
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {scalar_t__ sa_family; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;

__attribute__((used)) static inline bool
addr_inet4or6(struct sockaddr *addr)
{
    return addr->sa_family == AF_INET || addr->sa_family == AF_INET6;
}
