
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TBUTTON_INFO ;


 int TRUE ;
 int set_string_index (int *,int ,int ) ;

__attribute__((used)) static void free_string( TBUTTON_INFO *btn )
{
    set_string_index( btn, 0, TRUE );

}
