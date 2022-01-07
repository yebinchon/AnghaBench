
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IFileDialogEvents ;
typedef int IFileDialogControlEvents ;
typedef int HRESULT ;


 int IFileDialogEvents_QueryInterface (int *,int *,void**) ;
 int IID_IFileDialogControlEvents ;

__attribute__((used)) static inline HRESULT get_cctrl_event(IFileDialogEvents *pfde, IFileDialogControlEvents **pfdce)
{
    return IFileDialogEvents_QueryInterface(pfde, &IID_IFileDialogControlEvents, (void**)pfdce);
}
