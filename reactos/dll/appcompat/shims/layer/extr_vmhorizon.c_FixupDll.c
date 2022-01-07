
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UCHAR ;
struct TYPE_3__ {scalar_t__ DllBase; int BaseDllName; } ;
typedef int SIZE_T ;
typedef int Replacement3 ;
typedef int Replacement2 ;
typedef int Replacement1 ;
typedef TYPE_1__* PLDR_DATA_TABLE_ENTRY ;
typedef scalar_t__ PBYTE ;
typedef int Match3 ;
typedef int Match2 ;
typedef int Match1 ;


 int DbgPrint (char*,int *,scalar_t__) ;
 int NT_SUCCESS (int ) ;
 int NtCurrentProcess () ;
 int NtFlushInstructionCache (int ,scalar_t__,int) ;
 int NtReadVirtualMemory (int ,scalar_t__,int*,int,int*) ;
 scalar_t__ OFFSET_1 ;
 scalar_t__ OFFSET_2 ;
 scalar_t__ OFFSET_3 ;
 int Write (scalar_t__,int*,int) ;
 scalar_t__ memcmp (int*,int const*,int) ;

__attribute__((used)) static void FixupDll(PLDR_DATA_TABLE_ENTRY LdrEntry)
{
    static const UCHAR Match1[5] = { 0x0C, 0x8B, 0xFC, 0xF3, 0xA5 };
    static const UCHAR Match2[5] = { 0x0C, 0x8B, 0xFC, 0xF3, 0xA5 };
    static const UCHAR Match3[5] = { 0xB0, 0x8B, 0xFC, 0xF3, 0xA5 };
    UCHAR Replacement1[5] = { 0x10, 0x89, 0x34, 0x24, 0x90 };
    UCHAR Replacement2[5] = { 0x10, 0x89, 0x34, 0x24, 0x90 };
    UCHAR Replacement3[5] = { 0xB4, 0x89, 0x34, 0x24, 0x90 };





    UCHAR Buffer[5];
    PBYTE Base = LdrEntry->DllBase;
    SIZE_T Bytes;






    do {
        DbgPrint("Module %wZ Loaded at 0x%p, we should patch!\n", &LdrEntry->BaseDllName, LdrEntry->DllBase);
        if (!NT_SUCCESS(NtReadVirtualMemory(NtCurrentProcess(), Base + 0x21A6E, Buffer, 5, &Bytes)) || Bytes != 5)
            break;
        if (memcmp(Buffer, Match1, sizeof(Match1)))
            break;

        if (!NT_SUCCESS(NtReadVirtualMemory(NtCurrentProcess(), Base + 0x21B04, Buffer, 5, &Bytes)) || Bytes != 5)
            break;
        if (memcmp(Buffer, Match2, sizeof(Match2)))
            break;

        if (!NT_SUCCESS(NtReadVirtualMemory(NtCurrentProcess(), Base + 0x21C3C, Buffer, 5, &Bytes)) || Bytes != 5)
            break;
        if (memcmp(Buffer, Match3, sizeof(Match3)))
            break;

        DbgPrint("Module %wZ Loaded at 0x%p, OK to patch!\n", &LdrEntry->BaseDllName, LdrEntry->DllBase);
        if (!Write(Base + 0x21A6E, Replacement1, sizeof(Replacement1)))
            break;
        if (!Write(Base + 0x21B04, Replacement2, sizeof(Replacement2)))
            break;
        if (!Write(Base + 0x21C3C, Replacement3, sizeof(Replacement3)))
            break;

        NtFlushInstructionCache(NtCurrentProcess(), Base, 0x22000);

        DbgPrint("Module %wZ Loaded at 0x%p, patched!\n", &LdrEntry->BaseDllName, LdrEntry->DllBase);
    } while (0);
}
