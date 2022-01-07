
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifaddrs {char* ifa_name; } ;


 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static inline bool is_loopback(struct ifaddrs *ifa)
{
 const char *n = ifa->ifa_name;
 return n && (strcmp(n, "lo") == 0 || strcmp(n, "lo0") == 0);
}
