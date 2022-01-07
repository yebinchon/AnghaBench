
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;



inline bool timer_expired(uint16_t current, uint16_t future) { return (uint16_t)(current - future) < 0x8000; }
