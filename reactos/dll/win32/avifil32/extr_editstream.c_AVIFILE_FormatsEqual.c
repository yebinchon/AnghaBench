
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PAVISTREAM ;
typedef int * LPVOID ;
typedef scalar_t__ LONG ;
typedef int BOOL ;


 int AVIStreamFormatSize (int *,scalar_t__,scalar_t__*) ;
 int AVIStreamReadFormat (int *,scalar_t__,int *,scalar_t__*) ;
 scalar_t__ AVIStreamStart (int *) ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,int *) ;
 scalar_t__ SUCCEEDED (int ) ;
 int assert (int) ;
 scalar_t__ memcmp (int *,int *,scalar_t__) ;

__attribute__((used)) static BOOL AVIFILE_FormatsEqual(PAVISTREAM avi1, PAVISTREAM avi2)
{
  LPVOID fmt1 = ((void*)0), fmt2 = ((void*)0);
  LONG size1, size2, start1, start2;
  BOOL status = FALSE;

  assert(avi1 != ((void*)0) && avi2 != ((void*)0));


  start1 = AVIStreamStart(avi1);
  start2 = AVIStreamStart(avi2);
  if (FAILED(AVIStreamFormatSize(avi1, start1, &size1)))
    return FALSE;
  if (FAILED(AVIStreamFormatSize(avi2, start2, &size2)))
    return FALSE;
  if (size1 != size2)
    return FALSE;


  fmt1 = HeapAlloc(GetProcessHeap(), 0, size1);
  if (fmt1 == ((void*)0))
    return FALSE;
  if (SUCCEEDED(AVIStreamReadFormat(avi1, start1, fmt1, &size1))) {
    fmt2 = HeapAlloc(GetProcessHeap(), 0, size1);
    if (fmt2 != ((void*)0)) {
      if (SUCCEEDED(AVIStreamReadFormat(avi2, start2, fmt2, &size1)))
        status = (memcmp(fmt1, fmt2, size1) == 0);
    }
  }

  HeapFree(GetProcessHeap(), 0, fmt2);
  HeapFree(GetProcessHeap(), 0, fmt1);

  return status;
}
