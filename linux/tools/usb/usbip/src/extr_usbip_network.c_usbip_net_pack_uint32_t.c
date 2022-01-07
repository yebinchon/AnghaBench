
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int htonl (int ) ;
 int ntohl (int ) ;

void usbip_net_pack_uint32_t(int pack, uint32_t *num)
{
 uint32_t i;

 if (pack)
  i = htonl(*num);
 else
  i = ntohl(*num);

 *num = i;
}
