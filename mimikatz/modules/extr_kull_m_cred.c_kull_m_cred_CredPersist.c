
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* PCWCHAR ;
typedef size_t DWORD ;


 size_t ARRAYSIZE (char**) ;
 char** kull_m_cred_CredPersistToStrings ;

PCWCHAR kull_m_cred_CredPersist(DWORD persist)
{
 if(persist < ARRAYSIZE(kull_m_cred_CredPersistToStrings))
  return kull_m_cred_CredPersistToStrings[persist];
 else return L"?";
}
