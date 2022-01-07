
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* pCertInfo; } ;
struct TYPE_6__ {size_t cExtension; TYPE_1__* rgExtension; } ;
struct TYPE_5__ {int pszObjId; scalar_t__ fCritical; } ;
typedef TYPE_3__* PCCERT_CONTEXT ;
typedef int LPCSTR ;
typedef size_t DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int FIXME (char*,int ) ;
 scalar_t__ TRUE ;
 int debugstr_a (int ) ;
 int strcmp (int ,int ) ;
 int szOID_BASIC_CONSTRAINTS ;
 int szOID_BASIC_CONSTRAINTS2 ;
 int szOID_CERT_POLICIES ;
 int szOID_ENHANCED_KEY_USAGE ;
 int szOID_KEY_USAGE ;
 int szOID_NAME_CONSTRAINTS ;
 int szOID_SUBJECT_ALT_NAME ;
 int szOID_SUBJECT_ALT_NAME2 ;

__attribute__((used)) static BOOL CRYPT_CriticalExtensionsSupported(PCCERT_CONTEXT cert)
{
    BOOL ret = TRUE;
    DWORD i;

    for (i = 0; ret && i < cert->pCertInfo->cExtension; i++)
    {
        if (cert->pCertInfo->rgExtension[i].fCritical)
        {
            LPCSTR oid = cert->pCertInfo->rgExtension[i].pszObjId;

            if (!strcmp(oid, szOID_BASIC_CONSTRAINTS))
                ret = TRUE;
            else if (!strcmp(oid, szOID_BASIC_CONSTRAINTS2))
                ret = TRUE;
            else if (!strcmp(oid, szOID_NAME_CONSTRAINTS))
                ret = TRUE;
            else if (!strcmp(oid, szOID_KEY_USAGE))
                ret = TRUE;
            else if (!strcmp(oid, szOID_SUBJECT_ALT_NAME))
                ret = TRUE;
            else if (!strcmp(oid, szOID_SUBJECT_ALT_NAME2))
                ret = TRUE;
            else if (!strcmp(oid, szOID_CERT_POLICIES))
                ret = TRUE;
            else if (!strcmp(oid, szOID_ENHANCED_KEY_USAGE))
                ret = TRUE;
            else
            {
                FIXME("unsupported critical extension %s\n",
                 debugstr_a(oid));
                ret = FALSE;
            }
        }
    }
    return ret;
}
