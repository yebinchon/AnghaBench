
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int enabled ;


 int sysctlbyname (char*,int*,size_t*,int *,int ) ;

__attribute__((used)) static inline int
cpu_supports_avx()
{
    int enabled, r;
    size_t length = sizeof(enabled);
    r = sysctlbyname("hw.optional.avx1_0", &enabled, &length, ((void*)0), 0);
    if ( r == 0 && enabled != 0) {
        return 1;
    }
    else {
        return 0;
    }
}
