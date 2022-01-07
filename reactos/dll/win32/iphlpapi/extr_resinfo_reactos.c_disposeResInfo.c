
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_4__ {int DnsList; } ;
typedef TYPE_1__* PIPHLP_RES_INFO ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,int ) ;
 int RtlFreeHeap (int ,int ,TYPE_1__*) ;

VOID disposeResInfo( PIPHLP_RES_INFO InfoPtr )
{
    HeapFree(GetProcessHeap(), 0, InfoPtr->DnsList);
    RtlFreeHeap( GetProcessHeap(), 0, InfoPtr );
}
