
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t cSignerHandle; TYPE_1__* signerHandles; } ;
struct TYPE_4__ {int contentHash; } ;
typedef size_t DWORD ;
typedef TYPE_2__ CSignedMsgData ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 scalar_t__ CryptHashData (int ,int const*,size_t,int ) ;
 scalar_t__ TRUE ;

__attribute__((used)) static BOOL CSignedMsgData_UpdateHash(CSignedMsgData *msg_data,
 const BYTE *pbData, DWORD cbData)
{
    DWORD i;
    BOOL ret = TRUE;

    for (i = 0; ret && i < msg_data->cSignerHandle; i++)
        ret = CryptHashData(msg_data->signerHandles[i].contentHash, pbData,
         cbData, 0);
    return ret;
}
