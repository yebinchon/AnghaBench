
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LPCVOID ;
typedef int * LPCBYTE ;
typedef int DWORD ;


 char** PRINTF_TYPES ;
 int dprintf (char const*,...) ;

void kull_m_string_dprintf_hex(LPCVOID lpData, DWORD cbData, DWORD flags)
{
 DWORD i, sep = flags >> 16;
 const char * pType = PRINTF_TYPES[flags & 0x0000000f];
 for(i = 0; i < cbData; i++)
 {
  dprintf(pType, ((LPCBYTE) lpData)[i]);
  if(sep && !((i+1) % sep))
   dprintf("\n");
 }
}
