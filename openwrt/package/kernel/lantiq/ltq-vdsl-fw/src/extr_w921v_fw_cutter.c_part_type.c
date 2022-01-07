
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,unsigned int) ;

const char* part_type(unsigned int id)
{
 switch(id) {
 case 129:
  return "/tmp/vr9_dsl_fw_annex_b.bin";
 case 128:
  return "/tmp/vr9_tapi_fw.bin";
 }
 printf("\tUnknown lzma type 0x%02X\n", id);
 return "/tmp/unknown.lzma";
}
