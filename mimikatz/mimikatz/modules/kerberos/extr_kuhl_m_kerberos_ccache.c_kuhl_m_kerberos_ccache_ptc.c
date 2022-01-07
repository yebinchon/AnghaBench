
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int NTSTATUS ;


 int FALSE ;
 int STATUS_SUCCESS ;
 int TRUE ;
 int kuhl_m_kerberos_ccache_enum (int,int **,int ,int ) ;

NTSTATUS kuhl_m_kerberos_ccache_ptc(int argc, wchar_t * argv[])
{
 kuhl_m_kerberos_ccache_enum(argc, argv, TRUE, FALSE);
 return STATUS_SUCCESS;
}
