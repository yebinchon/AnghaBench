
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ipf; scalar_t__ unk; } ;
typedef TYPE_1__ php_com_persist_helper ;
typedef int HRESULT ;


 int E_NOTIMPL ;
 int IID_IPersistFile ;
 int IUnknown_QueryInterface (scalar_t__,int *,scalar_t__*) ;
 int S_OK ;

__attribute__((used)) static inline HRESULT get_persist_file(php_com_persist_helper *helper)
{
 if (!helper->ipf && helper->unk) {
  return IUnknown_QueryInterface(helper->unk, &IID_IPersistFile, &helper->ipf);
 }
 return helper->ipf ? S_OK : E_NOTIMPL;
}
