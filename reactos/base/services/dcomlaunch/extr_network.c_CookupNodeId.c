
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int VOID ;
typedef int UCHAR ;
struct TYPE_8__ {size_t HighPart; size_t LowPart; } ;
struct TYPE_11__ {TYPE_1__ u; } ;
struct TYPE_10__ {size_t LowPart; size_t HighPart; } ;
struct TYPE_9__ {int dwLength; size_t dwMemoryLoad; size_t dwTotalPhys; size_t dwTotalPageFile; size_t dwAvailPhys; size_t dwTotalVirtual; size_t dwAvailPageFile; size_t dwAvailVirtual; } ;
typedef size_t* PDWORD ;
typedef int MemoryStatus ;
typedef TYPE_2__ MEMORYSTATUS ;
typedef TYPE_3__ LUID ;
typedef TYPE_4__ LARGE_INTEGER ;
typedef size_t DWORD ;
typedef int CHAR ;


 int ANSI_NULL ;
 scalar_t__ AllocateLocallyUniqueId (TYPE_3__*) ;
 scalar_t__ GetComputerNameA (int*,size_t*) ;
 scalar_t__ GetDiskFreeSpaceA (char*,size_t*,size_t*,size_t*,size_t*) ;
 int GlobalMemoryStatus (TYPE_2__*) ;
 int MAX_COMPUTERNAME_LENGTH ;
 scalar_t__ QueryPerformanceCounter (TYPE_4__*) ;
 int SEED_BUFFER_SIZE ;
 int memset (int*,int,int) ;

__attribute__((used)) static VOID
CookupNodeId(UCHAR * NodeId)
{
    CHAR ComputerName[MAX_COMPUTERNAME_LENGTH + 1];
    CHAR * CurrentChar;
    DWORD Size;
    LARGE_INTEGER PerformanceCount;
    PDWORD NodeBegin, NodeMiddle;
    DWORD dwValue;
    MEMORYSTATUS MemoryStatus;
    LUID Luid;
    DWORD SectorsPerCluster, BytesPerSector, NumberOfFreeClusters, TotalNumberOfClusters;


    memset(NodeId, 0x11, SEED_BUFFER_SIZE * sizeof(UCHAR));


    Size = MAX_COMPUTERNAME_LENGTH + 1;
    if (GetComputerNameA(ComputerName, &Size))
    {
        Size = 0;
        CurrentChar = &ComputerName[0];
        while (*CurrentChar != ANSI_NULL)
        {
            NodeId[Size] ^= *CurrentChar;
            ++CurrentChar;


            if (++Size >= SEED_BUFFER_SIZE)
            {
                Size = 0;
            }
        }
    }


    NodeBegin = (DWORD *)&NodeId[0];
    NodeMiddle = (DWORD *)&NodeId[2];


    if (QueryPerformanceCounter(&PerformanceCount))
    {
        *NodeMiddle = *NodeMiddle ^ PerformanceCount.u.HighPart ^ PerformanceCount.u.LowPart;

        dwValue = PerformanceCount.u.HighPart ^ PerformanceCount.u.LowPart ^ *NodeBegin;
    }
    else
    {
        dwValue = *NodeBegin;
    }

    *NodeBegin = *NodeBegin ^ dwValue;
    *NodeMiddle = *NodeMiddle ^ *NodeBegin;


    MemoryStatus.dwLength = sizeof(MemoryStatus);
    GlobalMemoryStatus(&MemoryStatus);

    *NodeBegin = *NodeBegin ^ MemoryStatus.dwMemoryLoad;
    *NodeMiddle = *NodeMiddle ^ MemoryStatus.dwTotalPhys;
    *NodeBegin = *NodeBegin ^ MemoryStatus.dwTotalPageFile ^ MemoryStatus.dwAvailPhys;
    *NodeMiddle = *NodeMiddle ^ MemoryStatus.dwTotalVirtual ^ MemoryStatus.dwAvailPageFile;
    *NodeBegin = *NodeBegin ^ MemoryStatus.dwAvailVirtual;


    if (AllocateLocallyUniqueId(&Luid))
    {
        *NodeBegin = *NodeBegin ^ Luid.LowPart;
        *NodeMiddle = *NodeMiddle ^ Luid.HighPart;
    }


    if (GetDiskFreeSpaceA("c:\\", &SectorsPerCluster, &BytesPerSector, &NumberOfFreeClusters, &TotalNumberOfClusters))
    {
        *NodeMiddle = *NodeMiddle ^ TotalNumberOfClusters * BytesPerSector * SectorsPerCluster;
        *NodeBegin = *NodeBegin ^ NumberOfFreeClusters * BytesPerSector * SectorsPerCluster;
    }






    NodeId[0] |= 0x80u;
}
