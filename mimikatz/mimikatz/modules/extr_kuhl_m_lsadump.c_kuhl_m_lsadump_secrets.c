
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int NTSTATUS ;


 int TRUE ;
 int kuhl_m_lsadump_secretsOrCache (int,int **,int ) ;

NTSTATUS kuhl_m_lsadump_secrets(int argc, wchar_t * argv[])
{
 return kuhl_m_lsadump_secretsOrCache(argc, argv, TRUE);
}
