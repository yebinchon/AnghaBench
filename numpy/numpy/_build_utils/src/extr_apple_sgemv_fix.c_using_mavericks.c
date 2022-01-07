
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int str ;


 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int ) ;
 int sysctlbyname (char*,char*,size_t*,int *,int ) ;

__attribute__((used)) static inline int
using_mavericks()
{
    int r;
    char str[32] = {0};
    size_t size = sizeof(str);
    r = sysctlbyname("kern.osproductversion", str, &size, ((void*)0), 0);
    if ( r == 0 && strncmp(str, "10.9", strlen("10.9")) == 0) {
        return 1;
    }
    else {
        return 0;
    }
}
