
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int breakpoint_test (int) ;

__attribute__((used)) static inline bool perf_breakpoint_supported(void)
{
 return breakpoint_test(4);
}
