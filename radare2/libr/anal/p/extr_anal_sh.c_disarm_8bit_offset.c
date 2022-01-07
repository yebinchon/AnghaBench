
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int ut32 ;



__attribute__((used)) static ut64 disarm_8bit_offset (ut64 pc, ut32 offs) {


  ut64 off = offs;

 if ((off & 0x80) == 0x80)
 {
  off |= ~0xFF;
 }
 return (off << 1) + pc + 4;
}
