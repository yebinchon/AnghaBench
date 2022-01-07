
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CC_ALNUM ;
 int CC_DASH ;
 int CC_DOT ;
 scalar_t__ string_class (char const*,int,int ) ;
 size_t strlen (char const*) ;

__attribute__((used)) static bool
dns_addr_safe(const char *addr)
{
    if (addr)
    {
        const size_t len = strlen(addr);
        return len > 0 && len <= 255 && string_class(addr, CC_ALNUM|CC_DASH|CC_DOT, 0);
    }
    else
    {
        return 0;
    }
}
