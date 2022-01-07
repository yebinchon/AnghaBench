
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_2__ {int (* EditBox ) (int ,int ,int ) ;} ;
typedef int PCSTR ;
typedef int PCHAR ;
typedef int BOOLEAN ;


 TYPE_1__ UiVtbl ;
 int stub1 (int ,int ,int ) ;

BOOLEAN UiEditBox(PCSTR MessageText, PCHAR EditTextBuffer, ULONG Length)
{
    return UiVtbl.EditBox(MessageText, EditTextBuffer, Length);
}
