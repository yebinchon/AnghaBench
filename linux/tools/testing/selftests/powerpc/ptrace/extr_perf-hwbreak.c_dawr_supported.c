
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DAWR_LENGTH_MAX ;
 int breakpoint_test (int ) ;

__attribute__((used)) static inline bool dawr_supported(void)
{
 return breakpoint_test(DAWR_LENGTH_MAX);
}
