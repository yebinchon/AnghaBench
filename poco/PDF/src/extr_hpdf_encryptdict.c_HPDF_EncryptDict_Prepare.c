
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ mode; int key_len; int permission; int user_key; int owner_key; } ;
struct TYPE_11__ {int error; int mmgr; int attr; } ;
typedef int HPDF_Xref ;
typedef scalar_t__ HPDF_STATUS ;
typedef TYPE_1__* HPDF_EncryptDict ;
typedef TYPE_2__* HPDF_Encrypt ;
typedef int HPDF_Dict ;
typedef int HPDF_Binary ;


 int HPDF_Binary_New (int ,int ,int ) ;
 scalar_t__ HPDF_Dict_Add (TYPE_1__*,char*,int ) ;
 scalar_t__ HPDF_Dict_AddName (TYPE_1__*,char*,char*) ;
 scalar_t__ HPDF_Dict_AddNumber (TYPE_1__*,char*,int) ;
 scalar_t__ HPDF_ENCRYPT_R2 ;
 scalar_t__ HPDF_ENCRYPT_R3 ;
 int HPDF_EncryptDict_CreateID (TYPE_1__*,int ,int ) ;
 int HPDF_Encrypt_CreateEncryptionKey (TYPE_2__*) ;
 int HPDF_Encrypt_CreateOwnerKey (TYPE_2__*) ;
 int HPDF_Encrypt_CreateUserKey (TYPE_2__*) ;
 scalar_t__ HPDF_Error_GetCode (int ) ;
 scalar_t__ HPDF_OK ;
 int HPDF_PASSWD_LEN ;
 int HPDF_PTRACE (char*) ;

HPDF_STATUS
HPDF_EncryptDict_Prepare (HPDF_EncryptDict dict,
                           HPDF_Dict info,
                           HPDF_Xref xref)
{
    HPDF_STATUS ret;
    HPDF_Encrypt attr = (HPDF_Encrypt)dict->attr;
    HPDF_Binary user_key;
    HPDF_Binary owner_key;

    HPDF_PTRACE((" HPDF_EncryptDict_Prepare\n"));

    HPDF_EncryptDict_CreateID (dict, info, xref);
    HPDF_Encrypt_CreateOwnerKey (attr);
    HPDF_Encrypt_CreateEncryptionKey (attr);
    HPDF_Encrypt_CreateUserKey (attr);

    owner_key = HPDF_Binary_New (dict->mmgr, attr->owner_key, HPDF_PASSWD_LEN);
    if (!owner_key)
        return HPDF_Error_GetCode (dict->error);

    if ((ret = HPDF_Dict_Add (dict, "O", owner_key)) != HPDF_OK)
        return ret;

    user_key = HPDF_Binary_New (dict->mmgr, attr->user_key, HPDF_PASSWD_LEN);
    if (!user_key)
        return HPDF_Error_GetCode (dict->error);

    if ((ret = HPDF_Dict_Add (dict, "U", user_key)) != HPDF_OK)
        return ret;

    ret += HPDF_Dict_AddName (dict, "Filter", "Standard");

    if (attr->mode == HPDF_ENCRYPT_R2) {
        ret += HPDF_Dict_AddNumber (dict, "V", 1);
        ret += HPDF_Dict_AddNumber (dict, "R", 2);
    } else if (attr->mode == HPDF_ENCRYPT_R3) {
        ret += HPDF_Dict_AddNumber (dict, "V", 2);
        ret += HPDF_Dict_AddNumber (dict, "R", 3);
        ret += HPDF_Dict_AddNumber (dict, "Length", attr->key_len * 8);
    }

    ret += HPDF_Dict_AddNumber (dict, "P", attr->permission);

    if (ret != HPDF_OK)
        return HPDF_Error_GetCode (dict->error);

    return HPDF_OK;
}
