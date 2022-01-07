
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PCWCHAR ;
typedef scalar_t__ LPCVOID ;
typedef int * LPCBYTE ;
typedef int DWORD ;


 int * WPRINTF_TYPES ;
 int kprintf (char*,...) ;

void kull_m_string_wprintf_hex(LPCVOID lpData, DWORD cbData, DWORD flags)
{
 DWORD i, sep = flags >> 16;
 PCWCHAR pType = WPRINTF_TYPES[flags & 0x0000000f];

 if((flags & 0x0000000f) == 2)
  kprintf(L"\nBYTE data[] = {\n\t");

 for(i = 0; i < cbData; i++)
 {
  kprintf(pType, ((LPCBYTE) lpData)[i]);
  if(sep && !((i+1) % sep))
  {
   kprintf(L"\n");
   if((flags & 0x0000000f) == 2)
    kprintf(L"\t");
  }
 }
 if((flags & 0x0000000f) == 2)
  kprintf(L"\n};\n");
}
