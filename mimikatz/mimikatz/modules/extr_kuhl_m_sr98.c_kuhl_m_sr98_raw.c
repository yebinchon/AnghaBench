
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int wchar_t ;
typedef int ULONG ;
typedef size_t UCHAR ;
struct TYPE_7__ {int toProg; int data; } ;
struct TYPE_6__ {int hDevice; } ;
typedef TYPE_1__* PSR98_DEVICE ;
typedef int PCWCHAR ;
typedef int NTSTATUS ;
typedef TYPE_2__ KUHL_M_SR98_RAW_BLOCK ;
typedef int BOOLEAN ;


 size_t ARRAYSIZE (TYPE_2__*) ;
 int FALSE ;
 int PRINT_ERROR (char*,...) ;
 int STATUS_SUCCESS ;
 int TRUE ;
 int _byteswap_ulong (int) ;
 int kprintf (char*,...) ;
 int kuhl_m_sr98_b0_descr (int) ;
 int kull_m_string_args_byName (int,int **,char*,int *,int *) ;
 int sr98_devices_free (TYPE_1__*) ;
 scalar_t__ sr98_devices_get (TYPE_1__**,int*) ;
 int sr98_t5577_wipe (int ,int ) ;
 int sr98_t5577_write_block (int ,int ,size_t,int ,int,int ) ;
 void* wcstoul (int ,int *,int ) ;

NTSTATUS kuhl_m_sr98_raw(int argc, wchar_t * argv[])
{
 KUHL_M_SR98_RAW_BLOCK blocks[8];
 PSR98_DEVICE devices;
 ULONG count;
 PCWCHAR szBlock;
 UCHAR i;
 BOOLEAN isBlock = FALSE, isWipe = kull_m_string_args_byName(argc, argv, L"wipe", ((void*)0), ((void*)0));

 if(isBlock |= (blocks[0].toProg = kull_m_string_args_byName(argc, argv, L"b0", &szBlock, ((void*)0))))
 {
  blocks[0].data = wcstoul(szBlock, ((void*)0), 0);
  kuhl_m_sr98_b0_descr(blocks[0].data);
 }
 if(isBlock |= (blocks[1].toProg = kull_m_string_args_byName(argc, argv, L"b1", &szBlock, ((void*)0))))
  blocks[1].data = wcstoul(szBlock, ((void*)0), 0);
 if(isBlock |= (blocks[2].toProg = kull_m_string_args_byName(argc, argv, L"b2", &szBlock, ((void*)0))))
  blocks[2].data = wcstoul(szBlock, ((void*)0), 0);
 if(isBlock |= (blocks[3].toProg = kull_m_string_args_byName(argc, argv, L"b3", &szBlock, ((void*)0))))
  blocks[3].data = wcstoul(szBlock, ((void*)0), 0);
 if(isBlock |= (blocks[4].toProg = kull_m_string_args_byName(argc, argv, L"b4", &szBlock, ((void*)0))))
  blocks[4].data = wcstoul(szBlock, ((void*)0), 0);
 if(isBlock |= (blocks[5].toProg = kull_m_string_args_byName(argc, argv, L"b5", &szBlock, ((void*)0))))
  blocks[5].data = wcstoul(szBlock, ((void*)0), 0);
 if(isBlock |= (blocks[6].toProg = kull_m_string_args_byName(argc, argv, L"b6", &szBlock, ((void*)0))))
  blocks[6].data = wcstoul(szBlock, ((void*)0), 0);
 if(isBlock |= (blocks[7].toProg = kull_m_string_args_byName(argc, argv, L"b7", &szBlock, ((void*)0))))
 {
  blocks[7].data = wcstoul(szBlock, ((void*)0), 0);
  if(blocks[0].toProg && (blocks[0].data & 0x10))
   kprintf(L"\n> blocks[0] indicates PWD, blocks[7] will be the password (0x%08x)\n", blocks[7].data);
 }

 if(isBlock || isWipe)
 {
  if(sr98_devices_get(&devices, &count))
  {
   if(count == 1)
   {
    if(isWipe)
    {
     kprintf(L"\n * Wipe T5577 tag...\n");
     sr98_t5577_wipe(devices->hDevice, TRUE);
    }
    if(isBlock)
    {
     kprintf(L"\n * Write operations...\n");
     for(i = 0; i < ARRAYSIZE(blocks); i++)
     {
      if(blocks[i].toProg)
      {
       kprintf(L"   [%hhu] 0x%08x\n", i, blocks[i].data);
       sr98_t5577_write_block(devices->hDevice, 0, i, _byteswap_ulong(blocks[i].data), FALSE, 0);
      }
     }
    }
   }
   else PRINT_ERROR(L"Reader device is not unique (%u)\n", count);
   sr98_devices_free(devices);
  }
 }
 else PRINT_ERROR(L"No operation\n");
 return STATUS_SUCCESS;
}
