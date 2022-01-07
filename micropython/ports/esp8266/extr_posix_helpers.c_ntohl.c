
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int MP_BE32TOH (int ) ;

uint32_t ntohl(uint32_t netlong) {
    return MP_BE32TOH(netlong);
}
