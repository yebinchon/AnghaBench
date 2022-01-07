
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tableType_t ;
typedef size_t U32 ;
typedef int U16 ;
typedef int BYTE ;


 int assert (int ) ;





__attribute__((used)) static void LZ4_clearHash(U32 h, void* tableBase, tableType_t const tableType)
{
    switch (tableType)
    {
    default:
    case 128: { assert(0); return; }
    case 131: { const BYTE** hashTable = (const BYTE**)tableBase; hashTable[h] = ((void*)0); return; }
    case 129: { U32* hashTable = (U32*) tableBase; hashTable[h] = 0; return; }
    case 130: { U16* hashTable = (U16*) tableBase; hashTable[h] = 0; return; }
    }
}
