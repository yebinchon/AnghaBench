
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int LPCVOID ;
typedef scalar_t__ LONG ;
typedef int DWORD ;
typedef int BerElement ;


 int ID_CTX_ENCRYPTEDDATA_CIPHER ;
 int ID_CTX_ENCRYPTEDDATA_ETYPE ;
 int ID_CTX_ENCRYPTEDDATA_KVNO ;
 int MAKE_CTX_TAG (int ) ;
 int ber_printf (int *,char*,int ,int ,...) ;

void kuhl_m_kerberos_ticket_createSequenceEncryptedData(BerElement * pBer, LONG eType, ULONG kvNo, LPCVOID data, DWORD size)
{
 ber_printf(pBer, "{t{i}", MAKE_CTX_TAG(ID_CTX_ENCRYPTEDDATA_ETYPE), eType);
 if(eType)
  ber_printf(pBer, "t{i}", MAKE_CTX_TAG(ID_CTX_ENCRYPTEDDATA_KVNO), kvNo);
 ber_printf(pBer, "t{o}}", MAKE_CTX_TAG(ID_CTX_ENCRYPTEDDATA_CIPHER), data, size);
}
