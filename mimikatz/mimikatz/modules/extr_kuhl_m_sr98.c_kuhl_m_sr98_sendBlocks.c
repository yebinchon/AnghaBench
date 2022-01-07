
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ULONG ;
typedef size_t UCHAR ;
struct TYPE_4__ {int hDevice; } ;
typedef TYPE_1__* PSR98_DEVICE ;
typedef int BOOL ;


 int FALSE ;
 int PRINT_ERROR (char*,int) ;
 int TRUE ;
 int _byteswap_ulong (int) ;
 int kprintf (char*,...) ;
 int sr98_devices_free (TYPE_1__*) ;
 scalar_t__ sr98_devices_get (TYPE_1__**,int*) ;
 int sr98_t5577_write_block (int ,int ,size_t,int ,int ,int ) ;

BOOL kuhl_m_sr98_sendBlocks(ULONG *blocks, UCHAR nb)
{
 BOOL status = FALSE;
 PSR98_DEVICE devices;
 ULONG count;
 UCHAR i;
 if(sr98_devices_get(&devices, &count))
 {
  if(count == 1)
  {
   kprintf(L" * T5577 blocks:\n");
   for(i = 0; i < nb; i++)
    kprintf(L"   [%hhu] 0x%08x\n", i, blocks[i]);
   kprintf(L" * Write operations...\n");
   for(i = 0, status = TRUE; (i < nb) && status; i++)
    status &= sr98_t5577_write_block(devices->hDevice, 0, i, _byteswap_ulong(blocks[i]), FALSE, 0);
  }
  else PRINT_ERROR(L"Reader device is not unique (%u)\n", count);
  sr98_devices_free(devices);
 }
 return status;
}
