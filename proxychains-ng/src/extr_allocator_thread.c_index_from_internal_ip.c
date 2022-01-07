
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int* octet; } ;
typedef TYPE_1__ ip_type4 ;


 int PFUNC () ;

uint32_t index_from_internal_ip(ip_type4 internalip) {
 PFUNC();
 ip_type4 tmp = internalip;
 uint32_t ret;
 ret = tmp.octet[3] + (tmp.octet[2] << 8) + (tmp.octet[1] << 16);
 ret -= 1;
 return ret;
}
