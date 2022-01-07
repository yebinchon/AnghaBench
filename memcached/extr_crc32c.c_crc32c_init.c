
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT_HWCAP ;
 unsigned long HWCAP_CRC32 ;
 int SSE42 (int) ;
 int crc32c ;
 int crc32c_hw ;
 int crc32c_hw_aarch64 ;
 int crc32c_sw ;
 unsigned long getauxval (int ) ;

void crc32c_init(void) {

    int sse42;
    SSE42(sse42);

    if (sse42) {
        crc32c = crc32c_hw;
    } else
    {
        crc32c = crc32c_sw;
    }
}
