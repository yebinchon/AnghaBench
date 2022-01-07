
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int htons (int ) ;
 int ntohs (int ) ;

void usbip_net_pack_uint16_t(int pack, uint16_t *num)
{
 uint16_t i;

 if (pack)
  i = htons(*num);
 else
  i = ntohs(*num);

 *num = i;
}
