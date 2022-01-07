
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int_u ;
typedef int EventModifiers ;


 int MOD_MASK_ALT ;
 int MOD_MASK_CMD ;
 int MOD_MASK_CTRL ;
 int MOD_MASK_SHIFT ;
 int cmdKey ;
 int controlKey ;
 int optionKey ;
 int rightControlKey ;
 int rightOptionKey ;
 int rightShiftKey ;
 int shiftKey ;

__attribute__((used)) static int_u
EventModifiers2VimModifiers(EventModifiers macModifiers)
{
    int_u vimModifiers = 0x00;

    if (macModifiers & (shiftKey | rightShiftKey))
 vimModifiers |= MOD_MASK_SHIFT;
    if (macModifiers & (controlKey | rightControlKey))
 vimModifiers |= MOD_MASK_CTRL;
    if (macModifiers & (optionKey | rightOptionKey))
 vimModifiers |= MOD_MASK_ALT;




    return (vimModifiers);
}
