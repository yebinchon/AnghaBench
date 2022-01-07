
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int NIBBLE_PER_BYTE ;
 int NODE_DBG (char*,...) ;
 int memset (int*,int ,int) ;

int smart_check(uint8_t *nibble, uint16_t len, uint8_t *dst, uint8_t *got){
  if(len == 0)
    return 0;
  uint16_t dst_len = len/NIBBLE_PER_BYTE;
  uint16_t byte_num = 0, bit_num = 0;
  int i = 0, res = 1;
  memset(dst,0,dst_len);

  if(NIBBLE_PER_BYTE==1){
    for(i=0;i<len;i++){
      byte_num = (i) / 8;
      bit_num = (i) % 8;
      if(0x20>nibble[i] || nibble[i]>=0x7F){
        NODE_DBG("Smart: got np byte %d:%02x\n", i, nibble[i]);
        nibble[i] = 0;
        got[byte_num] &= ~(0x1 << bit_num);
        res = 0;
      } else {
        dst[i] = nibble[i];
      }
    }
    return res;
  }


  if((len%NIBBLE_PER_BYTE) != 0){

    NODE_DBG("Smart: smart_check got odd len\n");
    return 0;
  }

  if(len == 2){

    if(nibble[0]<=0xF && ((nibble[0]^0x1)&0xF == (nibble[1]>>4)) ){
      dst[0] = ((nibble[0]&0xF)<<4) + (nibble[1]&0xF);
      res = 1;
    }else{
      nibble[0] = 0;
      nibble[1] = 0;
      got[0] &= ~(0x3 << 0);
      res = 0;
    }
    return res;
  }

  res = 1;
  for(i=len-2;i>0;i--){
    bool forward = ( ((nibble[i]&0xF)^((i+1)&0xF)) == (nibble[i+1]>>4) );
    bool back = ( ((nibble[i-1]&0xF)^(i&0xF)) == (nibble[i]>>4) );
    if(!forward || !back){

      NODE_DBG("check: wf %d:%02x %02x %02x\n",i,nibble[i-1],nibble[i], nibble[i+1]);
      byte_num = (i-1) / 8;
      bit_num = (i-1) % 8;
      nibble[i-1] = 0;
      got[byte_num] &= ~(0x1 << bit_num);

      byte_num = (i) / 8;
      bit_num = (i) % 8;
      nibble[i] = 0;
      got[byte_num] &= ~(0x1 << bit_num);

      byte_num = (i+1) / 8;
      bit_num = (i+1) % 8;
      nibble[i+1] = 0;
      got[byte_num] &= ~(0x1 << bit_num);
      res = 0;
      return res;
    }

    if((i%NIBBLE_PER_BYTE) == 0) {
      dst[i/NIBBLE_PER_BYTE] = ((nibble[i]&0xF)<<4) + (nibble[i+1]&0xF);
    }
  }

  if(i==0){
    dst[0] = ((nibble[0]&0xF)<<4) + (nibble[1]&0xF);
  }

  for(i=0;i<dst_len;i++){

    byte_num = (i*NIBBLE_PER_BYTE) / 8;
    bit_num = (i*NIBBLE_PER_BYTE) % 8;
    if(0x20>dst[i] || dst[i]>=0x7F){
      NODE_DBG("Smart: got np byte %d:%02x\n", i, dst[i]);
      dst[i] = 0;
      nibble[i*NIBBLE_PER_BYTE] = 0;
      nibble[i*NIBBLE_PER_BYTE+1] = 0;
      got[byte_num] &= ~(0x3 << bit_num);
      res = 0;
    }
  }
  return res;
}
