
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int x_cs_err_delay_ms ;

__attribute__((used)) static inline void
set_check_status_error_delay(unsigned int milliseconds)
{
    x_cs_err_delay_ms = milliseconds;
}
