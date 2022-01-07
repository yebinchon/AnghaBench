
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int SCHEMA_PREFIX_TABLE ;
typedef int PWSTR ;
typedef scalar_t__ PVOID ;
typedef char* LPCWSTR ;
typedef int LPCSTR ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;
typedef int ATTRBLOCK ;


 int kprintf (char*,char*,int,int ,char*) ;
 scalar_t__ kull_m_rpc_drsr_findMonoAttr (int *,int *,int ,scalar_t__*,int*) ;

void kull_m_rpc_drsr_findPrintMonoAttr(LPCWSTR prefix, SCHEMA_PREFIX_TABLE *prefixTable, ATTRBLOCK *attributes, LPCSTR szOid, BOOL newLine)
{
 PVOID ptr;
 DWORD sz;
 if(kull_m_rpc_drsr_findMonoAttr(prefixTable, attributes, szOid, &ptr, &sz))
  kprintf(L"%s%.*s%s", prefix ? prefix : L"", sz / sizeof(wchar_t), (PWSTR) ptr, newLine ? L"\n" : L"");
}
