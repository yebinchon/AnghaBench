
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_2__ {int * pbData; int cbData; } ;
typedef int * PWSTR ;
typedef int PKULL_M_DPAPI_BLOB ;
typedef int PCWSTR ;
typedef int NTSTATUS ;
typedef int LPVOID ;
typedef TYPE_1__ DATA_BLOB ;


 int LocalFree (int *) ;
 int PRINT_ERROR_AUTO (char*) ;
 int STATUS_SUCCESS ;
 int kprintf (char*,...) ;
 scalar_t__ kuhl_m_dpapi_unprotect_raw_or_blob (int *,int ,int **,int,int **,int *,int ,int *,int *,int *) ;
 int kull_m_dpapi_blob_create (int *) ;
 int kull_m_dpapi_blob_delete (int ) ;
 int kull_m_dpapi_blob_descr (int ,int ) ;
 scalar_t__ kull_m_file_readData (int ,int **,int *) ;
 scalar_t__ kull_m_file_writeData (int ,int *,int ) ;
 scalar_t__ kull_m_string_args_byName (int,int **,char*,int *,int *) ;
 int kull_m_string_printSuspectUnicodeString (int *,int ) ;

NTSTATUS kuhl_m_dpapi_blob(int argc, wchar_t * argv[])
{
 DATA_BLOB dataIn, dataOut;
 PKULL_M_DPAPI_BLOB blob;
 PCWSTR outfile, infile;
 PWSTR description = ((void*)0);

 if(kull_m_string_args_byName(argc, argv, L"in", &infile, ((void*)0)))
 {
  if(kull_m_file_readData(infile, &dataIn.pbData, &dataIn.cbData))
  {
   if(blob = kull_m_dpapi_blob_create(dataIn.pbData))
   {
    kull_m_dpapi_blob_descr(0, blob);

    if(kuhl_m_dpapi_unprotect_raw_or_blob(dataIn.pbData, dataIn.cbData, &description, argc, argv, ((void*)0), 0, (LPVOID *) &dataOut.pbData, &dataOut.cbData, ((void*)0)))
    {
     if(description)
     {
      kprintf(L"description : %s\n", description);
      LocalFree(description);
     }

     if(kull_m_string_args_byName(argc, argv, L"out", &outfile, ((void*)0)))
     {
      if(kull_m_file_writeData(outfile, dataOut.pbData, dataOut.cbData))
       kprintf(L"Write to file \'%s\' is OK\n", outfile);
     }
     else
     {
      kprintf(L"data: ");
      kull_m_string_printSuspectUnicodeString(dataOut.pbData, dataOut.cbData);
      kprintf(L"\n");
     }
     LocalFree(dataOut.pbData);
    }
    kull_m_dpapi_blob_delete(blob);
   }
   LocalFree(dataIn.pbData);
  }
  else PRINT_ERROR_AUTO(L"kull_m_file_readData");
 }
 return STATUS_SUCCESS;
}
