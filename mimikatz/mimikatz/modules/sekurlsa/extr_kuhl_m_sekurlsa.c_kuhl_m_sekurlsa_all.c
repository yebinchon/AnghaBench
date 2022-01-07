
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int NTSTATUS ;


 int ARRAYSIZE (int ) ;
 int kuhl_m_sekurlsa_getLogonData (int ,int ) ;
 int lsassPackages ;

NTSTATUS kuhl_m_sekurlsa_all(int argc, wchar_t * argv[])
{
 return kuhl_m_sekurlsa_getLogonData(lsassPackages, ARRAYSIZE(lsassPackages));
}
