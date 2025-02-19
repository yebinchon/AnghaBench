
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {int cbData; int * pbData; } ;
struct TYPE_13__ {TYPE_4__* info; TYPE_2__* signerHandles; } ;
struct TYPE_12__ {size_t cSignerInfo; size_t* signerKeySpec; TYPE_3__* rgSignerInfo; } ;
struct TYPE_9__ {scalar_t__ cAttr; } ;
struct TYPE_11__ {TYPE_8__ EncryptedHash; TYPE_1__ AuthAttrs; } ;
struct TYPE_10__ {int contentHash; int authAttrHash; } ;
typedef int HCRYPTHASH ;
typedef size_t DWORD ;
typedef TYPE_5__ CSignedMsgData ;
typedef scalar_t__ BOOL ;


 size_t AT_SIGNATURE ;
 int CRYPT_ReverseBytes (TYPE_8__*) ;
 int * CryptMemAlloc (int ) ;
 scalar_t__ CryptSignHashW (int ,size_t,int *,int ,int *,int *) ;
 scalar_t__ FALSE ;
 int TRACE (char*,TYPE_5__*) ;
 scalar_t__ TRUE ;

__attribute__((used)) static BOOL CSignedMsgData_Sign(CSignedMsgData *msg_data)
{
    DWORD i;
    BOOL ret = TRUE;

    TRACE("(%p)\n", msg_data);

    for (i = 0; ret && i < msg_data->info->cSignerInfo; i++)
    {
        HCRYPTHASH hash;
        DWORD keySpec = msg_data->info->signerKeySpec[i];

        if (!keySpec)
            keySpec = AT_SIGNATURE;
        if (msg_data->info->rgSignerInfo[i].AuthAttrs.cAttr)
            hash = msg_data->signerHandles[i].authAttrHash;
        else
            hash = msg_data->signerHandles[i].contentHash;
        ret = CryptSignHashW(hash, keySpec, ((void*)0), 0, ((void*)0),
         &msg_data->info->rgSignerInfo[i].EncryptedHash.cbData);
        if (ret)
        {
            msg_data->info->rgSignerInfo[i].EncryptedHash.pbData =
             CryptMemAlloc(
             msg_data->info->rgSignerInfo[i].EncryptedHash.cbData);
            if (msg_data->info->rgSignerInfo[i].EncryptedHash.pbData)
            {
                ret = CryptSignHashW(hash, keySpec, ((void*)0), 0,
                 msg_data->info->rgSignerInfo[i].EncryptedHash.pbData,
                 &msg_data->info->rgSignerInfo[i].EncryptedHash.cbData);
                if (ret)
                    CRYPT_ReverseBytes(
                     &msg_data->info->rgSignerInfo[i].EncryptedHash);
            }
            else
                ret = FALSE;
        }
    }
    return ret;
}
