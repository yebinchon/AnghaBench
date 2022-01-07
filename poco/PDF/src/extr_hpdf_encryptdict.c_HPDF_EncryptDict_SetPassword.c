
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int user_passwd; int owner_passwd; } ;
struct TYPE_4__ {int error; int attr; } ;
typedef int HPDF_STATUS ;
typedef TYPE_1__* HPDF_EncryptDict ;
typedef TYPE_2__* HPDF_Encrypt ;


 int HPDF_ENCRYPT_INVALID_PASSWORD ;
 int HPDF_OK ;
 int HPDF_PTRACE (char*) ;
 int HPDF_PadOrTrancatePasswd (char const*,int ) ;
 int HPDF_SetError (int ,int ,int ) ;
 scalar_t__ HPDF_StrCmp (char const*,char const*) ;
 scalar_t__ HPDF_StrLen (char const*,int) ;

HPDF_STATUS
HPDF_EncryptDict_SetPassword (HPDF_EncryptDict dict,
                               const char *owner_passwd,
                               const char *user_passwd)
{
    HPDF_Encrypt attr = (HPDF_Encrypt)dict->attr;

    HPDF_PTRACE((" HPDF_EncryptDict_SetPassword\n"));

    if (HPDF_StrLen(owner_passwd, 2) == 0)
        return HPDF_SetError(dict->error, HPDF_ENCRYPT_INVALID_PASSWORD, 0);

    if (owner_passwd && user_passwd &&
            HPDF_StrCmp (owner_passwd, user_passwd) == 0)
        return HPDF_SetError(dict->error, HPDF_ENCRYPT_INVALID_PASSWORD, 0);

    HPDF_PadOrTrancatePasswd (owner_passwd, attr->owner_passwd);
    HPDF_PadOrTrancatePasswd (user_passwd, attr->user_passwd);

    return HPDF_OK;
}
