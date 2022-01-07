
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef int PFREELDR_MEMORY_DESCRIPTOR ;


 scalar_t__ ADDRESS_AND_SIZE_TO_SPAN_PAGES (scalar_t__,scalar_t__) ;
 int AddMemoryDescriptor (int ,int ,scalar_t__,scalar_t__,int ) ;
 scalar_t__ GetEbdaLocation (scalar_t__*,scalar_t__*) ;
 int GetExtendedMemoryConfiguration (scalar_t__*,scalar_t__*) ;
 int LoaderFirmwarePermanent ;
 int LoaderFree ;
 int LoaderSpecialMemory ;
 int MAX_BIOS_DESCRIPTORS ;
 int PAGE_SIZE ;
 int PcMapCount ;
 int PcMemCheckUsableMemorySize () ;
 scalar_t__ PcMemFinalizeMemoryMap (int ) ;
 scalar_t__ PcMemGetBiosMemoryMap (int ,int ) ;
 int PcMemGetConventionalMemorySize () ;
 int PcMemoryMap ;
 int SetMemory (int ,int,int,int ) ;
 int TRACE (char*) ;

PFREELDR_MEMORY_DESCRIPTOR
PcMemGetMemoryMap(ULONG *MemoryMapSize)
{
    ULONG EntryCount;
    ULONG ExtendedMemorySizeAtOneMB;
    ULONG ExtendedMemorySizeAtSixteenMB;
    ULONG EbdaBase, EbdaSize;

    TRACE("PcMemGetMemoryMap()\n");

    PcMemCheckUsableMemorySize();

    EntryCount = PcMemGetBiosMemoryMap(PcMemoryMap, MAX_BIOS_DESCRIPTORS);


    if (EntryCount == 0)
    {
        GetExtendedMemoryConfiguration(&ExtendedMemorySizeAtOneMB,
                                       &ExtendedMemorySizeAtSixteenMB);


        AddMemoryDescriptor(PcMemoryMap,
                            MAX_BIOS_DESCRIPTORS,
                            0,
                            PcMemGetConventionalMemorySize() * 1024 / PAGE_SIZE,
                            LoaderFree);


        PcMapCount = AddMemoryDescriptor(PcMemoryMap,
                                         MAX_BIOS_DESCRIPTORS,
                                         1024 * 1024 / PAGE_SIZE,
                                         ExtendedMemorySizeAtOneMB * 1024 / PAGE_SIZE,
                                         LoaderFree);

        if (ExtendedMemorySizeAtSixteenMB != 0)
        {

            PcMapCount = AddMemoryDescriptor(PcMemoryMap,
                                             MAX_BIOS_DESCRIPTORS,
                                             0x1000000 / PAGE_SIZE,
                                             ExtendedMemorySizeAtSixteenMB * 64 * 1024 / PAGE_SIZE,
                                             LoaderFree);
        }


        if (GetEbdaLocation(&EbdaBase, &EbdaSize))
        {

            PcMapCount = AddMemoryDescriptor(PcMemoryMap,
                                             MAX_BIOS_DESCRIPTORS,
                                             (EbdaBase / PAGE_SIZE),
                                             ADDRESS_AND_SIZE_TO_SPAN_PAGES(EbdaBase, EbdaSize),
                                             LoaderFirmwarePermanent);
        }
    }


    SetMemory(PcMemoryMap, 0x000000, 0x01000, LoaderFirmwarePermanent);
    SetMemory(PcMemoryMap, 0x0A0000, 0x50000, LoaderFirmwarePermanent);
    SetMemory(PcMemoryMap, 0x0F0000, 0x10000, LoaderSpecialMemory);
    SetMemory(PcMemoryMap, 0xFFF000, 0x01000, LoaderSpecialMemory);

    *MemoryMapSize = PcMemFinalizeMemoryMap(PcMemoryMap);
    return PcMemoryMap;
}
