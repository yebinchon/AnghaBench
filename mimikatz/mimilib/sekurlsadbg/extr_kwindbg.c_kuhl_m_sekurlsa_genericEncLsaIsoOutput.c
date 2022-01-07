
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int data; int unkData2; int unkData1; } ;
typedef TYPE_1__* PENC_LSAISO_DATA_BLOB ;
typedef int DWORD ;


 int ENC_LSAISO_DATA_BLOB ;
 int FIELD_OFFSET (int ,int ) ;
 int data ;
 int dprintf (char*) ;
 int kull_m_string_dprintf_hex (int ,int,int ) ;

VOID kuhl_m_sekurlsa_genericEncLsaIsoOutput(PENC_LSAISO_DATA_BLOB blob, DWORD size)
{
 dprintf("\n\t   * unkData1 : "); kull_m_string_dprintf_hex(blob->unkData1, sizeof(blob->unkData1), 0);
 dprintf("\n\t     unkData2 : "); kull_m_string_dprintf_hex(blob->unkData2, sizeof(blob->unkData2), 0);
 dprintf("\n\t     Encrypted: "); kull_m_string_dprintf_hex(blob->data, size - FIELD_OFFSET(ENC_LSAISO_DATA_BLOB, data), 0);
}
