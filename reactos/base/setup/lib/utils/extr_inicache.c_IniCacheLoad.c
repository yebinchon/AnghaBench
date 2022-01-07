
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UNICODE_STRING ;
typedef int PWCHAR ;
typedef int * PINICACHE ;
typedef int OBJECT_ATTRIBUTES ;
typedef int NTSTATUS ;
typedef int IO_STATUS_BLOCK ;
typedef int HANDLE ;
typedef int BOOLEAN ;


 int DPRINT (char*,...) ;
 int FILE_GENERIC_READ ;
 int FILE_NON_DIRECTORY_FILE ;
 int FILE_SHARE_READ ;
 int FILE_SYNCHRONOUS_IO_NONALERT ;
 int IniCacheLoadByHandle (int **,int ,int ) ;
 int InitializeObjectAttributes (int *,int *,int ,int *,int *) ;
 int NT_SUCCESS (int ) ;
 int NtClose (int ) ;
 int NtOpenFile (int *,int,int *,int *,int ,int) ;
 int OBJ_CASE_INSENSITIVE ;
 int RtlInitUnicodeString (int *,int ) ;
 int SYNCHRONIZE ;

NTSTATUS
IniCacheLoad(
    PINICACHE *Cache,
    PWCHAR FileName,
    BOOLEAN String)
{
    NTSTATUS Status;
    UNICODE_STRING Name;
    OBJECT_ATTRIBUTES ObjectAttributes;
    IO_STATUS_BLOCK IoStatusBlock;
    HANDLE FileHandle;

    *Cache = ((void*)0);


    RtlInitUnicodeString(&Name, FileName);

    InitializeObjectAttributes(&ObjectAttributes,
                               &Name,
                               OBJ_CASE_INSENSITIVE,
                               ((void*)0),
                               ((void*)0));

    Status = NtOpenFile(&FileHandle,
                        FILE_GENERIC_READ | SYNCHRONIZE,
                        &ObjectAttributes,
                        &IoStatusBlock,
                        FILE_SHARE_READ,
                        FILE_SYNCHRONOUS_IO_NONALERT | FILE_NON_DIRECTORY_FILE);
    if (!NT_SUCCESS(Status))
    {
        DPRINT("NtOpenFile() failed (Status %lx)\n", Status);
        return Status;
    }

    DPRINT("NtOpenFile() successful\n");

    Status = IniCacheLoadByHandle(Cache, FileHandle, String);


    NtClose(FileHandle);
    return Status;
}
