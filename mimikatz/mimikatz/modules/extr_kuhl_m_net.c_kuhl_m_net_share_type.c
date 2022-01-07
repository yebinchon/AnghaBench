
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;





 int STYPE_MASK ;

 int STYPE_RESERVED_ALL ;
 int STYPE_SPECIAL ;
 int STYPE_TEMPORARY ;
 int kprintf (char*) ;

void kuhl_m_net_share_type(DWORD type)
{
 switch(type & STYPE_MASK)
 {
 case 130:
  kprintf(L"disktree ; ");
  break;
 case 128:
  kprintf(L"printq ; ");
  break;
 case 131:
  kprintf(L"device ; ");
  break;
 case 129:
  kprintf(L"ipc ; ");
  break;
 }

 if(type & STYPE_TEMPORARY)
  kprintf(L"temporary ; ");
 if(type & STYPE_SPECIAL)
  kprintf(L"special ; ");
 if(type & STYPE_RESERVED_ALL)
  kprintf(L"reserved flag(s) ; ");
 kprintf(L"\n");
}
