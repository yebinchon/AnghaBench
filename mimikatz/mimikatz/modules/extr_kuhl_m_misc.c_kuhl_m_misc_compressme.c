
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int PVOID ;
typedef int PBYTE ;
typedef int NTSTATUS ;
typedef scalar_t__ DWORD ;


 int LocalFree (int ) ;
 int MIMIKATZ_COMPRESSED_FILENAME ;
 int PRINT_ERROR_AUTO (char*) ;
 int STATUS_SUCCESS ;
 int * _wpgmptr ;
 int kprintf (char*,...) ;
 scalar_t__ kull_m_file_readData (int *,int *,scalar_t__*) ;
 scalar_t__ kull_m_file_writeData (int ,int ,scalar_t__) ;
 scalar_t__ kull_m_memory_quick_compress (int ,scalar_t__,int *,scalar_t__*) ;

NTSTATUS kuhl_m_misc_compressme(int argc, wchar_t * argv[])
{
 PBYTE data, compressedData;
 DWORD size, compressedSize;
#pragma warning(push)
#pragma warning(disable:4996)
 wchar_t *fileName = _wpgmptr;
#pragma warning(pop)
 kprintf(L"Using \'%s\' as input file\n", fileName);
 if(kull_m_file_readData(fileName, &data, &size))
 {
  kprintf(L" * Original size  : %u\n", size);
  if(kull_m_memory_quick_compress(data, size, (PVOID *) &compressedData, &compressedSize))
  {
   kprintf(L" * Compressed size: %u (%.2f%%)\nUsing \'%s\' as output file... ", compressedSize, 100 * ((float) compressedSize / (float) size), MIMIKATZ_COMPRESSED_FILENAME);
   if(kull_m_file_writeData(MIMIKATZ_COMPRESSED_FILENAME, compressedData, compressedSize))
    kprintf(L"OK!\n");
   else PRINT_ERROR_AUTO(L"kull_m_file_writeData");
   LocalFree(compressedData);
  }
  LocalFree(data);
 }
 return STATUS_SUCCESS;
}
