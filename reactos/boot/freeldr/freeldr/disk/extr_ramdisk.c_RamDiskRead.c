
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef scalar_t__ ULONG_PTR ;
typedef scalar_t__ ULONG ;
typedef scalar_t__ PVOID ;
typedef int ARC_STATUS ;


 int EIO ;
 int ESUCCESS ;
 scalar_t__ RamDiskBase ;
 scalar_t__ RamDiskImageLength ;
 scalar_t__ RamDiskImageOffset ;
 scalar_t__ RamDiskOffset ;
 int RtlCopyMemory (int *,scalar_t__,scalar_t__) ;

__attribute__((used)) static ARC_STATUS RamDiskRead(ULONG FileId, VOID* Buffer, ULONG N, ULONG* Count)
{
    PVOID StartAddress;


    if (RamDiskOffset >= RamDiskImageLength || RamDiskOffset + N > RamDiskImageLength)
    {
        *Count = 0;
        return EIO;
    }



    StartAddress = (PVOID)((ULONG_PTR)RamDiskBase + RamDiskImageOffset + (ULONG_PTR)RamDiskOffset);


    RtlCopyMemory(Buffer, StartAddress, N);
    RamDiskOffset += N;
    *Count = N;

    return ESUCCESS;
}
