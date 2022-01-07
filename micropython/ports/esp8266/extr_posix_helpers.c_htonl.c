
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int MP_HTOBE32 (int ) ;

uint32_t htonl(uint32_t netlong) {
    return MP_HTOBE32(netlong);
}
