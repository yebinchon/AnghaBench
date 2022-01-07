
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
inline void SetSDR1( int sdr ) {



    __asm__("mtsdr1 3");
}
