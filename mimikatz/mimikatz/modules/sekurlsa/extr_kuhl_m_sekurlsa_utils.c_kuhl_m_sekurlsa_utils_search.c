
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ BuildNumber; } ;
struct TYPE_6__ {TYPE_1__ osContext; } ;
typedef int PVOID ;
typedef int PKUHL_M_SEKURLSA_LIB ;
typedef TYPE_2__* PKUHL_M_SEKURLSA_CONTEXT ;
typedef int BOOL ;


 int ARRAYSIZE (int ) ;
 scalar_t__ KULL_M_WIN_BUILD_2K3 ;
 int LogonSessionList ;
 int LogonSessionListCount ;
 int LsaSrvReferences ;
 int kuhl_m_sekurlsa_utils_search_generic (TYPE_2__*,int ,int ,int ,int *,int *,int *,int *) ;

BOOL kuhl_m_sekurlsa_utils_search(PKUHL_M_SEKURLSA_CONTEXT cLsass, PKUHL_M_SEKURLSA_LIB pLib)
{
 PVOID *pLogonSessionListCount = (cLsass->osContext.BuildNumber < KULL_M_WIN_BUILD_2K3) ? ((void*)0) : ((PVOID *) &LogonSessionListCount);
 return kuhl_m_sekurlsa_utils_search_generic(cLsass, pLib, LsaSrvReferences, ARRAYSIZE(LsaSrvReferences), (PVOID *) &LogonSessionList, pLogonSessionListCount, ((void*)0), ((void*)0));
}
