
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int netutils_endian_t ;
typedef int mp_uint_t ;
typedef int mp_obj_t ;


 int mp_obj_get_array_fixed_n (int ,int,int **) ;
 int mp_obj_get_int (int ) ;
 int netutils_parse_ipv4_addr (int ,int *,int ) ;

mp_uint_t netutils_parse_inet_addr(mp_obj_t addr_in, uint8_t *out_ip, netutils_endian_t endian) {
    mp_obj_t *addr_items;
    mp_obj_get_array_fixed_n(addr_in, 2, &addr_items);
    netutils_parse_ipv4_addr(addr_items[0], out_ip, endian);
    return mp_obj_get_int(addr_items[1]);
}
