
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * hSIP; void* pfRemove; void* pfVerify; void* pfCreate; void* pfPut; void* pfGet; int member_0; } ;
typedef TYPE_1__ SIP_DISPATCH_INFO ;
typedef int * HMODULE ;
typedef int GUID ;
typedef int BOOL ;


 int CRYPT_CacheSIP (int const*,TYPE_1__*) ;
 void* CRYPT_LoadSIPFunc (int const*,int ,int **) ;
 int FALSE ;
 int FreeLibrary (int *) ;
 int SetLastError (int ) ;
 int TRUE ;
 int TRUST_E_SUBJECT_FORM_UNKNOWN ;
 int szCreate ;
 int szGetSigned ;
 int szPutSigned ;
 int szRemoveSigned ;
 int szVerify ;

__attribute__((used)) static BOOL CRYPT_LoadSIP(const GUID *pgSubject)
{
    SIP_DISPATCH_INFO sip = { 0 };
    HMODULE lib = ((void*)0), temp = ((void*)0);

    sip.pfGet = CRYPT_LoadSIPFunc(pgSubject, szGetSigned, &lib);
    if (!sip.pfGet)
        goto error;
    sip.pfPut = CRYPT_LoadSIPFunc(pgSubject, szPutSigned, &temp);
    if (!sip.pfPut || temp != lib)
        goto error;
    FreeLibrary(temp);
    temp = ((void*)0);
    sip.pfCreate = CRYPT_LoadSIPFunc(pgSubject, szCreate, &temp);
    if (!sip.pfCreate || temp != lib)
        goto error;
    FreeLibrary(temp);
    temp = ((void*)0);
    sip.pfVerify = CRYPT_LoadSIPFunc(pgSubject, szVerify, &temp);
    if (!sip.pfVerify || temp != lib)
        goto error;
    FreeLibrary(temp);
    temp = ((void*)0);
    sip.pfRemove = CRYPT_LoadSIPFunc(pgSubject, szRemoveSigned, &temp);
    if (!sip.pfRemove || temp != lib)
        goto error;
    FreeLibrary(temp);
    sip.hSIP = lib;
    CRYPT_CacheSIP(pgSubject, &sip);
    return TRUE;

error:
    FreeLibrary(lib);
    FreeLibrary(temp);
    SetLastError(TRUST_E_SUBJECT_FORM_UNKNOWN);
    return FALSE;
}
