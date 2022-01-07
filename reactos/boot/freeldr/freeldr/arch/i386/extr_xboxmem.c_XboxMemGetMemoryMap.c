
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG_PTR ;
typedef int ULONG ;
typedef int PFREELDR_MEMORY_DESCRIPTOR ;


 int AvailableMemoryMb ;
 scalar_t__ FrameBuffer ;
 scalar_t__ FrameBufferSize ;
 int LoaderFirmwarePermanent ;
 int LoaderFree ;
 int PcMemFinalizeMemoryMap (int ) ;
 int ReserveMemory (int ,int ,scalar_t__,int ,char*) ;
 int SetMemory (int ,int ,int,int ) ;
 int TRACE (char*) ;
 int XboxMemoryMap ;

PFREELDR_MEMORY_DESCRIPTOR
XboxMemGetMemoryMap(ULONG *MemoryMapSize)
{
    TRACE("XboxMemGetMemoryMap()\n");





    SetMemory(XboxMemoryMap,
              0,
              AvailableMemoryMb * 1024 * 1024,
              LoaderFree);

    if (FrameBufferSize != 0)
    {

        ReserveMemory(XboxMemoryMap,
                      (ULONG_PTR)FrameBuffer,
                      FrameBufferSize,
                      LoaderFirmwarePermanent,
                      "Video memory");
    }

    *MemoryMapSize = PcMemFinalizeMemoryMap(XboxMemoryMap);
    return XboxMemoryMap;
}
