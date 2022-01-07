
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long cpu_to_le16 (unsigned long) ;
 unsigned long cpu_to_le32 (unsigned long) ;
 unsigned long cpu_to_le64 (unsigned long) ;
 int kvm_mmio_write_buf (void*,unsigned int,unsigned long) ;

void vgic_data_host_to_mmio_bus(void *buf, unsigned int len,
    unsigned long data)
{
 switch (len) {
 case 1:
  break;
 case 2:
  data = cpu_to_le16(data);
  break;
 case 4:
  data = cpu_to_le32(data);
  break;
 default:
  data = cpu_to_le64(data);
 }

 kvm_mmio_write_buf(buf, len, data);
}
