
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IDxDiagContainerImpl_Container ;
typedef scalar_t__ HRESULT ;


 scalar_t__ E_FAIL ;
 scalar_t__ fill_display_information_d3d (int *) ;
 scalar_t__ fill_display_information_fallback (int *) ;

__attribute__((used)) static HRESULT build_displaydevices_tree(IDxDiagContainerImpl_Container *node)
{
    HRESULT hr;


    hr = fill_display_information_d3d(node);
    if (hr != E_FAIL)
        return hr;

    return fill_display_information_fallback(node);
}
