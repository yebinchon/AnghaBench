
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
typedef scalar_t__ ut16 ;
struct TYPE_5__ {int member_0; } ;
struct TYPE_6__ {scalar_t__ comp_check; int rom_setup; scalar_t__ checksum; TYPE_1__ member_0; } ;
typedef TYPE_2__ sfc_int_hdr ;
struct TYPE_7__ {int size; int buf; } ;
typedef int RList ;
typedef TYPE_3__ RBinFile ;


 int SFC_HDR_SIZE ;
 int addrom (int *,char*,int,int,int,int) ;
 int eprintf (char*) ;
 int r_buf_read_at (int ,int,int *,int) ;
 int * r_list_new () ;

__attribute__((used)) static RList* sections(RBinFile *bf) {
 RList *ret = ((void*)0);

 int hdroffset = 0;
 bool is_hirom = 0;
 int i = 0;





 sfc_int_hdr sfchdr = {{0}};

 int reat = r_buf_read_at (bf->buf, 0x7FC0 + hdroffset, (ut8*)&sfchdr, SFC_HDR_SIZE);
 if (reat != SFC_HDR_SIZE) {
  eprintf ("Unable to read SFC/SNES header\n");
  return ((void*)0);
 }

 if ( (sfchdr.comp_check != (ut16)~(sfchdr.checksum)) || ((sfchdr.rom_setup & 0x1) != 0) ){



  reat = r_buf_read_at (bf->buf, 0xFFC0 + hdroffset, (ut8*)&sfchdr, SFC_HDR_SIZE);
  if (reat != SFC_HDR_SIZE) {
   eprintf ("Unable to read SFC/SNES header\n");
   return ((void*)0);
  }

  if ( (sfchdr.comp_check != (ut16)~(sfchdr.checksum)) || ((sfchdr.rom_setup & 0x1) != 1) ) {

   eprintf ("Cannot determine if this is a LoROM or HiROM file\n");
   return ((void*)0);
  }
  is_hirom = 1;
 }

 if (!(ret = r_list_new ())) {
  return ((void*)0);
 }

 if (is_hirom) {
  for (i = 0; i < ((bf->size - hdroffset) / 0x8000) ; i++) {

   addrom (ret, "ROM",i,hdroffset + i * 0x8000, 0x400000 + (i * 0x8000), 0x8000);
   if (i % 2) {
    addrom(ret, "ROM_MIRROR", i, hdroffset + i * 0x8000,(i * 0x8000), 0x8000);
   }
  }

 } else {
  for (i=0; i < ((bf->size - hdroffset)/ 0x8000) ; i++) {

   addrom(ret,"ROM",i,hdroffset + i*0x8000,0x8000 + (i*0x10000), 0x8000);
  }
 }
 return ret;
}
