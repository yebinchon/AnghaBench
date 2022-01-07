
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SID_NAME_USE ;
typedef char* PCWCHAR ;


 char** SidNameUses ;
 int SidTypeLabel ;

PCWCHAR kull_m_token_getSidNameUse(SID_NAME_USE SidNameUse)
{
 return (SidNameUse > 0 && SidNameUse <= SidTypeLabel) ? SidNameUses[SidNameUse - 1] : L"unk!";
}
