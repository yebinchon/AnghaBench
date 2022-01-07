
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



inline bool timer_expired32(uint32_t current, uint32_t future) { return (uint32_t)(current - future) < 0x80000000; }
