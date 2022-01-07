
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int netutils_endian_t ;
typedef int mp_uint_t ;
typedef int mp_obj_t ;


 int mp_obj_new_int (int ) ;
 int mp_obj_new_tuple (int,int *) ;
 int netutils_format_ipv4_addr (int *,int ) ;

mp_obj_t netutils_format_inet_addr(uint8_t *ip, mp_uint_t port, netutils_endian_t endian) {
    mp_obj_t tuple[2] = {
        tuple[0] = netutils_format_ipv4_addr(ip, endian),
        tuple[1] = mp_obj_new_int(port),
    };
    return mp_obj_new_tuple(2, tuple);
}
