
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TABLE_SIZE (int *) ;
 int alloc_text (int,int ,int ) ;
 size_t get_choice (int *,int ) ;
 size_t mouse_choice ;
 int * mouse_choices ;
 int mouse_text ;

__attribute__((used)) static void
change_mouse_choice(int idx)
{
    mouse_choice = get_choice(mouse_choices, TABLE_SIZE(mouse_choices));
    alloc_text(idx, mouse_text, mouse_choices[mouse_choice]);
}
