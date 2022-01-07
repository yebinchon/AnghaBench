
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int AR8XXX_REG_ARL_CTRL_AGE_TIME_SECS ;

__attribute__((used)) static inline u32
ar8xxx_age_time_val(int age_time)
{
 return (age_time + AR8XXX_REG_ARL_CTRL_AGE_TIME_SECS / 2) /
        AR8XXX_REG_ARL_CTRL_AGE_TIME_SECS;
}
