
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long kvm_mmio_read_buf (void const*,unsigned int) ;
 unsigned long le16_to_cpu (unsigned long) ;
 unsigned long le32_to_cpu (unsigned long) ;
 unsigned long le64_to_cpu (unsigned long) ;

unsigned long vgic_data_mmio_bus_to_host(const void *val, unsigned int len)
{
 unsigned long data = kvm_mmio_read_buf(val, len);

 switch (len) {
 case 1:
  return data;
 case 2:
  return le16_to_cpu(data);
 case 4:
  return le32_to_cpu(data);
 default:
  return le64_to_cpu(data);
 }
}
