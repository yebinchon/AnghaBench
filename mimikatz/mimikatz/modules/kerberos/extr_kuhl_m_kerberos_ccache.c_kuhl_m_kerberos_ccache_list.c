
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int NTSTATUS ;


 int FALSE ;
 int STATUS_SUCCESS ;
 int kuhl_m_kerberos_ccache_enum (int,int **,int ,int ) ;
 int kull_m_string_args_byName (int,int **,char*,int *,int *) ;

NTSTATUS kuhl_m_kerberos_ccache_list(int argc, wchar_t * argv[])
{
 kuhl_m_kerberos_ccache_enum(argc, argv, FALSE, kull_m_string_args_byName(argc, argv, L"export", ((void*)0), ((void*)0)));
 return STATUS_SUCCESS;
}
