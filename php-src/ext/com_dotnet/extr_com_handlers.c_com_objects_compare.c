
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
struct TYPE_3__ {int v; } ;
typedef TYPE_1__ php_com_dotnet_object ;
typedef int STDAPI ;
typedef int * LPVARIANT ;
typedef int LCID ;
typedef int DWORD ;


 TYPE_1__* CDNO_FETCH (int *) ;
 int LOCALE_SYSTEM_DEFAULT ;



 int ZEND_COMPARE_OBJECTS_FALLBACK (int *,int *) ;

__attribute__((used)) static int com_objects_compare(zval *object1, zval *object2)
{
 php_com_dotnet_object *obja, *objb;
 int ret;




 STDAPI VarCmp(LPVARIANT pvarLeft, LPVARIANT pvarRight, LCID lcid, DWORD flags);

 ZEND_COMPARE_OBJECTS_FALLBACK(object1, object2);

 obja = CDNO_FETCH(object1);
 objb = CDNO_FETCH(object2);

 switch (VarCmp(&obja->v, &objb->v, LOCALE_SYSTEM_DEFAULT, 0)) {
  case 128:
   ret = -1;
   break;
  case 129:
   ret = 1;
   break;
  case 130:
   ret = 0;
   break;
  default:


   ret = -2;
 }

 return ret;
}
