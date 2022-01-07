
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t _u8 ;
struct TYPE_4__ {TYPE_1__* ObjPool; } ;
struct TYPE_3__ {size_t NextIndex; } ;


 size_t MAX_CONCURRENT_ACTIONS ;
 TYPE_2__* g_pCB ;

void _SlRemoveFromList(_u8 *ListIndex, _u8 ItemIndex)
{

 _u8 Idx;


    if (MAX_CONCURRENT_ACTIONS == g_pCB->ObjPool[*ListIndex].NextIndex)
    {
        *ListIndex = MAX_CONCURRENT_ACTIONS;
    }



 else if (*ListIndex == ItemIndex)
 {
  *ListIndex = g_pCB->ObjPool[ItemIndex].NextIndex;
 }
 else
 {
              Idx = *ListIndex;

              while(MAX_CONCURRENT_ACTIONS > Idx)
              {

                  if (g_pCB->ObjPool[Idx].NextIndex == ItemIndex)
                  {
                          g_pCB->ObjPool[Idx].NextIndex = g_pCB->ObjPool[ItemIndex].NextIndex;
                          break;
                  }

                  Idx = g_pCB->ObjPool[Idx].NextIndex;
              }
 }

}
