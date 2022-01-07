
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCVOID ;
typedef int LONG ;
typedef int DWORD ;
typedef int BerElement ;


 int ID_CTX_ENCRYPTIONKEY_KEYTYPE ;
 int ID_CTX_ENCRYPTIONKEY_KEYVALUE ;
 int MAKE_CTX_TAG (int ) ;
 int ber_printf (int *,char*,int ,int ,int ,int ,int ) ;

void kuhl_m_kerberos_ticket_createSequenceEncryptionKey(BerElement * pBer, LONG eType, LPCVOID data, DWORD size)
{
 ber_printf(pBer, "{t{i}t{o}}", MAKE_CTX_TAG(ID_CTX_ENCRYPTIONKEY_KEYTYPE), eType, MAKE_CTX_TAG(ID_CTX_ENCRYPTIONKEY_KEYVALUE), data, size);
}
