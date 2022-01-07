
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_3__ {int member_6; int * member_5; int member_4; int member_3; int member_2; int member_1; int * member_0; } ;
struct TYPE_4__ {int member_3; int member_2; int * member_1; TYPE_1__ member_0; } ;
typedef int NTSTATUS ;
typedef TYPE_2__ KIWI_KEY_INFO ;


 int AT_SIGNATURE ;
 int CRYPT_EXPORTABLE ;
 int CRYPT_SILENT ;
 int MS_ENHANCED_PROV ;
 int PROV_RSA_FULL ;
 int STATUS_SUCCESS ;

NTSTATUS kuhl_m_crypto_c_pkiwi(int argc, wchar_t * argv[])
{
 KIWI_KEY_INFO CaKi = {{((void*)0), MS_ENHANCED_PROV, PROV_RSA_FULL, CRYPT_SILENT, 0, ((void*)0), AT_SIGNATURE}, ((void*)0), CRYPT_EXPORTABLE, 4096};


 return STATUS_SUCCESS;
}
