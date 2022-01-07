
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int NTSTATUS ;


 int STATUS_SUCCESS ;
 int kuhl_m_sekurlsa_enum (int ,int *) ;
 int kuhl_m_sekurlsa_enum_callback_dpapi ;

NTSTATUS kuhl_m_sekurlsa_dpapi(int argc, wchar_t * argv[])
{
 kuhl_m_sekurlsa_enum(kuhl_m_sekurlsa_enum_callback_dpapi, ((void*)0));
 return STATUS_SUCCESS;
}
