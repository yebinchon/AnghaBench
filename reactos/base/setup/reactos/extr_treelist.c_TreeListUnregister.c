
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HINSTANCE ;
typedef int BOOL ;


 int TVC_CLASSNAME ;
 int UnregisterClass (int ,int ) ;
 int _T (int ) ;

BOOL TreeListUnregister(HINSTANCE hInstance){
 return UnregisterClass(_T(TVC_CLASSNAME),hInstance);
}
