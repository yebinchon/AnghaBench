
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtl8366_smi {int dummy; } ;


 int rtl8366_smi_read_bits (struct rtl8366_smi*,int,int*) ;
 int rtl8366_smi_write_bits (struct rtl8366_smi*,int,int) ;

__attribute__((used)) static int rtl8366_smi_read_byte1(struct rtl8366_smi *smi, u8 *data)
{
 u32 t;


 rtl8366_smi_read_bits(smi, 8, &t);
 *data = (t & 0xff);


 rtl8366_smi_write_bits(smi, 0x01, 1);

 return 0;
}
