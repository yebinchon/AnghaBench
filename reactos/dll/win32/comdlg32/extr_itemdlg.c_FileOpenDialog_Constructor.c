
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REFIID ;
typedef int IUnknown ;
typedef int HRESULT ;


 int FileDialog_constructor (int *,int ,void**,int ) ;
 int ITEMDLG_TYPE_OPEN ;

HRESULT FileOpenDialog_Constructor(IUnknown *pUnkOuter, REFIID riid, void **ppv)
{
    return FileDialog_constructor(pUnkOuter, riid, ppv, ITEMDLG_TYPE_OPEN);
}
