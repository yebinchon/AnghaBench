
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PCWCHAR ;
typedef size_t DWORD ;


 size_t ARRAYSIZE (int *) ;
 int * kull_m_cred_CredTypeToStrings ;

PCWCHAR kull_m_cred_CredType(DWORD type)
{
 if(type >= ARRAYSIZE(kull_m_cred_CredTypeToStrings))
  type = 0;
 return kull_m_cred_CredTypeToStrings[type];
}
