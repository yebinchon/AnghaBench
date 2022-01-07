
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ SignOrVerify ;
typedef int DWORD ;
typedef int CSignedMsgData ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 scalar_t__ CSignedMsgData_Sign (int *) ;
 scalar_t__ CSignedMsgData_UpdateAuthenticatedAttributes (int *,scalar_t__) ;
 scalar_t__ CSignedMsgData_UpdateHash (int *,int const*,int ) ;
 scalar_t__ Sign ;

__attribute__((used)) static BOOL CSignedMsgData_Update(CSignedMsgData *msg_data,
 const BYTE *pbData, DWORD cbData, BOOL fFinal, SignOrVerify flag)
{
    BOOL ret = CSignedMsgData_UpdateHash(msg_data, pbData, cbData);

    if (ret && fFinal)
    {
        ret = CSignedMsgData_UpdateAuthenticatedAttributes(msg_data, flag);
        if (ret && flag == Sign)
            ret = CSignedMsgData_Sign(msg_data);
    }
    return ret;
}
