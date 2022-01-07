
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_4__ {int wState; int hWndEdit; int hWndLBox; } ;
typedef int * LPWSTR ;
typedef TYPE_1__* LPHEADCOMBO ;
typedef int LPARAM ;
typedef scalar_t__ INT ;


 int CBF_FOCUSED ;
 int CBF_NOEDITNOTIFY ;
 int CBF_NOLBSELECT ;
 scalar_t__ CB_HASSTRINGS (TYPE_1__*) ;
 int EM_SETSEL ;
 scalar_t__ LB_ERR ;
 int LB_GETTEXT ;
 int LB_GETTEXTLEN ;
 scalar_t__ SendMessageW (int ,int ,scalar_t__,int) ;
 int TRACE (char*,scalar_t__) ;
 int WM_SETTEXT ;
 int * heap_alloc (scalar_t__) ;
 int heap_free (int *) ;

__attribute__((used)) static void CBUpdateEdit( LPHEADCOMBO lphc , INT index )
{
   INT length;
   LPWSTR pText = ((void*)0);
   static const WCHAR empty_stringW[] = { 0 };

   TRACE("\t %i\n", index );

   if( index >= 0 )
   {
       length = SendMessageW(lphc->hWndLBox, LB_GETTEXTLEN, index, 0);
       if( length != LB_ERR)
       {
           if ((pText = heap_alloc((length + 1) * sizeof(WCHAR))))
               SendMessageW(lphc->hWndLBox, LB_GETTEXT, index, (LPARAM)pText);
       }
   }

   if( CB_HASSTRINGS(lphc) )
   {
      lphc->wState |= (CBF_NOEDITNOTIFY | CBF_NOLBSELECT);
      SendMessageW(lphc->hWndEdit, WM_SETTEXT, 0, pText ? (LPARAM)pText : (LPARAM)empty_stringW);
      lphc->wState &= ~(CBF_NOEDITNOTIFY | CBF_NOLBSELECT);
   }

   if( lphc->wState & CBF_FOCUSED )
      SendMessageW(lphc->hWndEdit, EM_SETSEL, 0, -1);

    heap_free( pText );
}
