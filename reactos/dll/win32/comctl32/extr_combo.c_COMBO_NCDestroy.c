
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int self; scalar_t__ hWndLBox; } ;
typedef int LRESULT ;
typedef TYPE_1__ HEADCOMBO ;


 scalar_t__ CBS_SIMPLE ;
 scalar_t__ CB_GETTYPE (TYPE_1__*) ;
 int DestroyWindow (scalar_t__) ;
 int SetWindowLongPtrW (int ,int ,int ) ;
 int TRACE (char*,int ) ;
 int heap_free (TYPE_1__*) ;

__attribute__((used)) static LRESULT COMBO_NCDestroy( HEADCOMBO *lphc )
{
    if (lphc)
    {
        TRACE("[%p]: freeing storage\n", lphc->self);

        if ( (CB_GETTYPE(lphc) != CBS_SIMPLE) && lphc->hWndLBox )
            DestroyWindow( lphc->hWndLBox );

        SetWindowLongPtrW( lphc->self, 0, 0 );
        heap_free( lphc );
    }

    return 0;
}
