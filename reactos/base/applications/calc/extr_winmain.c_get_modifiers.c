
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;


 scalar_t__ BST_CHECKED ;
 int IDC_CHECK_HYP ;
 int IDC_CHECK_INV ;
 scalar_t__ IsDlgButtonChecked (int ,int ) ;
 int MODIFIER_HYP ;
 int MODIFIER_INV ;

__attribute__((used)) static int get_modifiers(HWND hWnd)
{
    int modifiers = 0;

    if (IsDlgButtonChecked(hWnd, IDC_CHECK_INV) == BST_CHECKED)
        modifiers |= MODIFIER_INV;
    if (IsDlgButtonChecked(hWnd, IDC_CHECK_HYP) == BST_CHECKED)
        modifiers |= MODIFIER_HYP;

    return modifiers;
}
