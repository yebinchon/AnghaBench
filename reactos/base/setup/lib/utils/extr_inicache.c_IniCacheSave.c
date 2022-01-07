
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UNICODE_STRING ;
typedef int PWCHAR ;
typedef int PINICACHE ;
typedef int OBJECT_ATTRIBUTES ;
typedef int NTSTATUS ;
typedef int IO_STATUS_BLOCK ;
typedef int HANDLE ;


 int DPRINT (char*,int ) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_GENERIC_WRITE ;
 int FILE_NON_DIRECTORY_FILE ;
 int FILE_SEQUENTIAL_ONLY ;
 int FILE_SUPERSEDE ;
 int FILE_SYNCHRONOUS_IO_NONALERT ;
 int IniCacheSaveByHandle (int ,int ) ;
 int InitializeObjectAttributes (int *,int *,int ,int *,int *) ;
 int NT_SUCCESS (int ) ;
 int NtClose (int ) ;
 int NtCreateFile (int *,int,int *,int *,int *,int ,int ,int ,int,int *,int ) ;
 int OBJ_CASE_INSENSITIVE ;
 int RtlInitUnicodeString (int *,int ) ;
 int SYNCHRONIZE ;

NTSTATUS
IniCacheSave(
    PINICACHE Cache,
    PWCHAR FileName)
{
    NTSTATUS Status;
    UNICODE_STRING Name;
    OBJECT_ATTRIBUTES ObjectAttributes;
    IO_STATUS_BLOCK IoStatusBlock;
    HANDLE FileHandle;


    RtlInitUnicodeString(&Name, FileName);

    InitializeObjectAttributes(&ObjectAttributes,
                               &Name,
                               OBJ_CASE_INSENSITIVE,
                               ((void*)0),
                               ((void*)0));

    Status = NtCreateFile(&FileHandle,
                          FILE_GENERIC_WRITE | SYNCHRONIZE,
                          &ObjectAttributes,
                          &IoStatusBlock,
                          ((void*)0),
                          FILE_ATTRIBUTE_NORMAL,
                          0,
                          FILE_SUPERSEDE,
                          FILE_SYNCHRONOUS_IO_NONALERT | FILE_SEQUENTIAL_ONLY | FILE_NON_DIRECTORY_FILE,
                          ((void*)0),
                          0);
    if (!NT_SUCCESS(Status))
    {
        DPRINT("NtCreateFile() failed (Status %lx)\n", Status);
        return Status;
    }

    Status = IniCacheSaveByHandle(Cache, FileHandle);


    NtClose(FileHandle);
    return Status;
}
