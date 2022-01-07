
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ authAttrHash; scalar_t__ contentHash; } ;
struct TYPE_4__ {size_t cSignerHandle; TYPE_2__* signerHandles; } ;
typedef size_t DWORD ;
typedef TYPE_1__ CSignedMsgData ;


 int CryptDestroyHash (scalar_t__) ;
 int CryptMemFree (TYPE_2__*) ;

__attribute__((used)) static void CSignedMsgData_CloseHandles(CSignedMsgData *msg_data)
{
    DWORD i;

    for (i = 0; i < msg_data->cSignerHandle; i++)
    {
        if (msg_data->signerHandles[i].contentHash)
            CryptDestroyHash(msg_data->signerHandles[i].contentHash);
        if (msg_data->signerHandles[i].authAttrHash)
            CryptDestroyHash(msg_data->signerHandles[i].authAttrHash);
    }
    CryptMemFree(msg_data->signerHandles);
    msg_data->signerHandles = ((void*)0);
    msg_data->cSignerHandle = 0;
}
