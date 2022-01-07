
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_4__ {int iString; } ;
typedef TYPE_1__ TBUTTON_INFO ;
typedef int INT_PTR ;
typedef scalar_t__ BOOL ;


 int Free (int *) ;
 int IS_INTRESOURCE (int) ;
 int Str_SetPtrAtoW (int **,char*) ;
 int Str_SetPtrW (int **,int *) ;
 scalar_t__ TOOLBAR_ButtonHasString (TYPE_1__*) ;

__attribute__((used)) static void set_string_index( TBUTTON_INFO *btn, INT_PTR str, BOOL unicode )
{
    if (!IS_INTRESOURCE( str ) && str != -1)
    {
        if (!TOOLBAR_ButtonHasString( btn )) btn->iString = 0;

        if (unicode)
            Str_SetPtrW( (WCHAR **)&btn->iString, (WCHAR *)str );
        else
            Str_SetPtrAtoW( (WCHAR **)&btn->iString, (char *)str );
    }
    else
    {
        if (TOOLBAR_ButtonHasString( btn )) Free( (WCHAR *)btn->iString );

        btn->iString = str;
    }
}
