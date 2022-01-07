
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut8 ;
typedef int ut16 ;


 scalar_t__ LZ4_isLittleEndian () ;
 int LZ4_write16 (void*,int) ;

__attribute__((used)) static void LZ4_writeLE16(void* memPtr, ut16 value) {
 if (LZ4_isLittleEndian ()) {
  LZ4_write16 (memPtr, value);
 } else {
  ut8* p = (ut8*)memPtr;
  p[0] = (ut8) value;
  p[1] = (ut8)(value>>8);
 }
}
