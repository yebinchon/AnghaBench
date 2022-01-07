
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int type; } ;
typedef int CRYPT_DER_BLOB ;
typedef TYPE_1__ CDecodeMsg ;
typedef int BOOL ;


 int CDecodeMsg_FinalizeEnvelopedContent (TYPE_1__*,int *) ;
 int CDecodeMsg_FinalizeHashedContent (TYPE_1__*,int *) ;
 int CDecodeMsg_FinalizeSignedContent (TYPE_1__*,int *) ;



 int FALSE ;
 int TRUE ;

__attribute__((used)) static BOOL CDecodeMsg_FinalizeContent(CDecodeMsg *msg, CRYPT_DER_BLOB *blob)
{
    BOOL ret = FALSE;

    switch (msg->type)
    {
    case 129:
        ret = CDecodeMsg_FinalizeHashedContent(msg, blob);
        break;
    case 130:
        ret = CDecodeMsg_FinalizeEnvelopedContent(msg, blob);
        break;
    case 128:
        ret = CDecodeMsg_FinalizeSignedContent(msg, blob);
        break;
    default:
        ret = TRUE;
    }
    return ret;
}
