
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef size_t ut32 ;
typedef int ut16 ;
typedef int tableType_t ;






__attribute__((used)) static void LZ4_putPositionOnHash(const ut8* p, ut32 h, void* tableBase, tableType_t const tableType, const ut8* srcBase) {
 switch (tableType) {
 case 130: { const ut8** hashTable = (const ut8**)tableBase; hashTable[h] = p; return; }
 case 128: { ut32* hashTable = (ut32*) tableBase; hashTable[h] = (ut32)(p-srcBase); return; }
 case 129: { ut16* hashTable = (ut16*) tableBase; hashTable[h] = (ut16)(p-srcBase); return; }
 }
}
