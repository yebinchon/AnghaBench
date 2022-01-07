
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_3__ {int member_1; int const* member_0; } ;
typedef int PKUHL_M_SEKURLSA_PACKAGE ;
typedef int NTSTATUS ;
typedef TYPE_1__ KUHL_M_SEKURLSA_GET_LOGON_DATA_CALLBACK_DATA ;


 int kuhl_m_sekurlsa_enum (int ,TYPE_1__*) ;
 int kuhl_m_sekurlsa_enum_callback_logondata ;

NTSTATUS kuhl_m_sekurlsa_getLogonData(const PKUHL_M_SEKURLSA_PACKAGE * lsassPackages, ULONG nbPackages)
{
 KUHL_M_SEKURLSA_GET_LOGON_DATA_CALLBACK_DATA OptionalData = {lsassPackages, nbPackages};
 return kuhl_m_sekurlsa_enum(kuhl_m_sekurlsa_enum_callback_logondata, &OptionalData);
}
