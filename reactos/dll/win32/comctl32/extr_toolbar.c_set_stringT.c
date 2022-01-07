
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int TBUTTON_INFO ;
typedef int DWORD_PTR ;
typedef int BOOL ;


 scalar_t__ IS_INTRESOURCE (int) ;
 int set_string_index (int *,int,int ) ;

__attribute__((used)) static void set_stringT( TBUTTON_INFO *btn, const WCHAR *str, BOOL unicode )
{
    if (IS_INTRESOURCE( (DWORD_PTR)str ) || (DWORD_PTR)str == -1) return;
    set_string_index( btn, (DWORD_PTR)str, unicode );
}
