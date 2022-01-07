
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int mch_update_cursor () ;
 int s_cursor_visible ;

__attribute__((used)) static void
cursor_visible(BOOL fVisible)
{
    s_cursor_visible = fVisible;



}
