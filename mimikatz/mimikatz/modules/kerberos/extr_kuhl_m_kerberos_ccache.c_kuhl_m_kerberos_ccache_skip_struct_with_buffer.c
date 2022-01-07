
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef int * PDWORD ;
typedef scalar_t__ PBYTE ;
typedef scalar_t__ DWORD ;


 scalar_t__ _byteswap_ulong (int ) ;
 int kuhl_m_kerberos_ccache_skip_buffer (scalar_t__*) ;

void kuhl_m_kerberos_ccache_skip_struct_with_buffer(PBYTE *data)
{
 DWORD i, numBuff = _byteswap_ulong(*(PDWORD) *data); *data += sizeof(DWORD);
 for (i = 0; i < numBuff; i++)
 {
  *data += sizeof(USHORT);
  kuhl_m_kerberos_ccache_skip_buffer(data);
 }
}
