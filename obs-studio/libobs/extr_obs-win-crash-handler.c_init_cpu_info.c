
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct exception_handler_data {int cpu_info; } ;
typedef scalar_t__ LSTATUS ;
typedef int LPBYTE ;
typedef int HKEY ;
typedef int DWORD ;


 int CPU_ERROR ;
 scalar_t__ ERROR_SUCCESS ;
 int HKEY_LOCAL_MACHINE ;
 int PROCESSOR_REG_KEY ;
 scalar_t__ RegOpenKeyW (int ,int ,int *) ;
 scalar_t__ RegQueryValueExW (int ,char*,int *,int *,int ,int*) ;
 int dstr_copy (int *,int ) ;
 int dstr_from_wcs (int *,int *) ;

__attribute__((used)) static inline void init_cpu_info(struct exception_handler_data *data)
{
 HKEY key;
 LSTATUS status;

 status = RegOpenKeyW(HKEY_LOCAL_MACHINE, PROCESSOR_REG_KEY, &key);
 if (status == ERROR_SUCCESS) {
  wchar_t str[1024];
  DWORD size = 1024;

  status = RegQueryValueExW(key, L"ProcessorNameString", ((void*)0),
       ((void*)0), (LPBYTE)str, &size);
  if (status == ERROR_SUCCESS)
   dstr_from_wcs(&data->cpu_info, str);
  else
   dstr_copy(&data->cpu_info, CPU_ERROR);
 } else {
  dstr_copy(&data->cpu_info, CPU_ERROR);
 }
}
