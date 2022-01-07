
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int NTSTATUS ;


 int STATUS_SUCCESS ;
 scalar_t__ isBase64InterceptInput ;
 scalar_t__ isBase64InterceptOutput ;
 int kprintf (char*,char*,char*) ;
 int kull_m_string_args_bool_byName (int,int **,char*,scalar_t__*) ;

NTSTATUS kuhl_m_standard_base64(int argc, wchar_t * argv[])
{
 if(!kull_m_string_args_bool_byName(argc, argv, L"in", &isBase64InterceptInput))
  kull_m_string_args_bool_byName(argc, argv, L"input", &isBase64InterceptInput);

 if(!kull_m_string_args_bool_byName(argc, argv, L"out", &isBase64InterceptOutput))
  kull_m_string_args_bool_byName(argc, argv, L"output", &isBase64InterceptOutput);

 kprintf(L"isBase64InterceptInput  is %s\nisBase64InterceptOutput is %s\n", isBase64InterceptInput ? L"true" : L"false", isBase64InterceptOutput ? L"true" : L"false");
 return STATUS_SUCCESS;
}
