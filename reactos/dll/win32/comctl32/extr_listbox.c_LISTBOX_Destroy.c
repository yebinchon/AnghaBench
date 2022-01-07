
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int self; } ;
typedef TYPE_1__ LB_DESCR ;
typedef int HTHEME ;
typedef int BOOL ;


 int CloseThemeData (int ) ;
 int GetProcessHeap () ;
 int GetWindowTheme (int ) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int LISTBOX_ResetContent (TYPE_1__*) ;
 int SetWindowLongPtrW (int ,int ,int ) ;
 int TRUE ;

__attribute__((used)) static BOOL LISTBOX_Destroy( LB_DESCR *descr )
{
    HTHEME theme = GetWindowTheme( descr->self );
    CloseThemeData( theme );
    LISTBOX_ResetContent( descr );
    SetWindowLongPtrW( descr->self, 0, 0 );
    HeapFree( GetProcessHeap(), 0, descr );
    return TRUE;
}
