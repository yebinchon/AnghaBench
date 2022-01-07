
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int NTSTATUS ;


 int SE_TCB ;
 int kuhl_m_privilege_simple (int ) ;

NTSTATUS kuhl_m_privilege_tcb(int argc, wchar_t * argv[])
{
 return kuhl_m_privilege_simple(SE_TCB);
}
