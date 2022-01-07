
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ COUNTER_OVERFLOW ;

__attribute__((used)) static inline uint32_t pmc_sample_period(uint32_t value)
{
 return COUNTER_OVERFLOW - value;
}
