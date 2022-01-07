
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_6__ {TYPE_3__* szUrl; TYPE_3__* szID; } ;
struct TYPE_7__ {TYPE_1__ Link; } ;
struct TYPE_8__ {scalar_t__ Type; struct TYPE_8__* Blocks; TYPE_2__ u; } ;
typedef TYPE_3__* PDOC_ITEM ;


 int Free (TYPE_3__*) ;
 scalar_t__ slLink ;

__attribute__((used)) static VOID SYSLINK_FreeDocItem (PDOC_ITEM DocItem)
{
    if(DocItem->Type == slLink)
    {
        Free(DocItem->u.Link.szID);
        Free(DocItem->u.Link.szUrl);
    }

    Free(DocItem->Blocks);




    Free(DocItem);
}
