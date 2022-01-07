
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PDWORD ;
typedef scalar_t__ PBYTE ;
typedef int DWORD ;


 scalar_t__ _byteswap_ulong (int ) ;

void kuhl_m_kerberos_ccache_skip_buffer(PBYTE *data)
{
 *data += sizeof(DWORD) + _byteswap_ulong(*(PDWORD) *data);
}
