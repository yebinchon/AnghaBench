
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
typedef scalar_t__ sa_family_t ;


 scalar_t__ const AF_INET ;

uint16_t
ip_checksum(const sa_family_t af, const uint8_t *payload, const int len_payload,
            const uint8_t *src_addr, const uint8_t *dest_addr, const int proto)
{
    uint32_t sum = 0;
    int addr_len = (af == AF_INET) ? 4 : 16;





    for (int i = 0; i < len_payload; i += 2)
    {
        sum += (uint16_t)(((payload[i] << 8) & 0xFF00)
                           +((i + 1 < len_payload) ? (payload[i + 1] & 0xFF) : 0));

    }





    for (int i = 0; i < addr_len; i += 2)
    {
        sum += (uint16_t)((src_addr[i] << 8) & 0xFF00) + (src_addr[i + 1] & 0xFF);

    }
    for (int i = 0; i < addr_len; i += 2)
    {
        sum += (uint16_t)((dest_addr[i] << 8) & 0xFF00) + (dest_addr[i + 1] & 0xFF);
    }


    sum += (uint16_t)len_payload;


    sum += (uint16_t)proto;





    while (sum >> 16)
    {
        sum = (sum & 0xFFFF) + (sum >> 16);
    }


    return ((uint16_t) ~sum);
}
