
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PCCTL_CONTEXT ;
typedef int DWORD ;
typedef int BOOL ;


 int TRUE ;

__attribute__((used)) static BOOL compare_ctl_any(PCCTL_CONTEXT pCtlContext, DWORD dwType,
 DWORD dwFlags, const void *pvPara)
{
    return TRUE;
}
