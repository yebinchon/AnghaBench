
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_4__ {scalar_t__ UniqueProcessId; int NextEntryOffset; int ThreadCount; } ;
struct TYPE_3__ {scalar_t__ UniqueThreadId; scalar_t__ ThreadState; scalar_t__ WaitReason; } ;
typedef TYPE_1__ OBS_SYSTEM_THREAD_INFORMATION ;
typedef TYPE_2__ OBS_SYSTEM_PROCESS_INFORMATION2 ;
typedef scalar_t__ NTSTATUS ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD_PTR ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;


 scalar_t__ NT_SUCCESS (scalar_t__) ;
 scalar_t__ STATUS_INFO_LENGTH_MISMATCH ;
 int SystemProcessInformation ;
 scalar_t__ THREAD_STATE_WAITING ;
 scalar_t__ THREAD_WAIT_REASON_SUSPENDED ;
 int free (void*) ;
 void* malloc (int) ;
 scalar_t__ nt_query_information (int ,void*,int,int*) ;

__attribute__((used)) static bool thread_is_suspended(DWORD process_id, DWORD thread_id)
{
 ULONG size = 4096;
 bool suspended = 0;
 void *data = malloc(size);

 for (;;) {
  NTSTATUS stat = nt_query_information(SystemProcessInformation,
           data, size, &size);
  if (NT_SUCCESS(stat))
   break;

  if (stat != STATUS_INFO_LENGTH_MISMATCH) {
   goto fail;
  }

  free(data);
  size += 1024;
  data = malloc(size);
 }

 OBS_SYSTEM_PROCESS_INFORMATION2 *spi = data;

 for (;;) {
  if (spi->UniqueProcessId == (HANDLE)(DWORD_PTR)process_id) {
   break;
  }

  ULONG offset = spi->NextEntryOffset;
  if (!offset)
   goto fail;

  spi = (OBS_SYSTEM_PROCESS_INFORMATION2 *)((BYTE *)spi + offset);
 }

 OBS_SYSTEM_THREAD_INFORMATION *sti;
 OBS_SYSTEM_THREAD_INFORMATION *info = ((void*)0);
 sti = (OBS_SYSTEM_THREAD_INFORMATION *)((BYTE *)spi + sizeof(*spi));

 for (ULONG i = 0; i < spi->ThreadCount; i++) {
  if (sti[i].UniqueThreadId == (HANDLE)(DWORD_PTR)thread_id) {
   info = &sti[i];
   break;
  }
 }

 if (info) {
  suspended = info->ThreadState == THREAD_STATE_WAITING &&
       info->WaitReason == THREAD_WAIT_REASON_SUSPENDED;
 }

fail:
 free(data);
 return suspended;
}
