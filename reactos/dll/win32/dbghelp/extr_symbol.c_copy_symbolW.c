
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int Name; int MaxNameLen; int NameLen; int Tag; int Scope; int Register; int Address; int Value; int Flags; int ModBase; int Size; int Index; int * Reserved; int TypeIndex; int SizeOfStruct; } ;
struct TYPE_5__ {int MaxNameLen; int Name; int NameLen; int Tag; int Scope; int Register; int Address; int Value; int Flags; int ModBase; int Size; int Index; int * Reserved; int TypeIndex; int SizeOfStruct; } ;
typedef TYPE_1__ SYMBOL_INFOW ;
typedef TYPE_2__ SYMBOL_INFO ;


 int CP_ACP ;
 int MultiByteToWideChar (int ,int ,int ,int,int ,int ) ;

void copy_symbolW(SYMBOL_INFOW* siw, const SYMBOL_INFO* si)
{
    siw->SizeOfStruct = si->SizeOfStruct;
    siw->TypeIndex = si->TypeIndex;
    siw->Reserved[0] = si->Reserved[0];
    siw->Reserved[1] = si->Reserved[1];
    siw->Index = si->Index;
    siw->Size = si->Size;
    siw->ModBase = si->ModBase;
    siw->Flags = si->Flags;
    siw->Value = si->Value;
    siw->Address = si->Address;
    siw->Register = si->Register;
    siw->Scope = si->Scope;
    siw->Tag = si->Tag;
    siw->NameLen = si->NameLen;
    siw->MaxNameLen = si->MaxNameLen;
    MultiByteToWideChar(CP_ACP, 0, si->Name, -1, siw->Name, siw->MaxNameLen);
}
