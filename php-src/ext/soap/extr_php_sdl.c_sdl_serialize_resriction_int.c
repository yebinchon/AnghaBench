
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int smart_str ;
typedef TYPE_1__* sdlRestrictionIntPtr ;
struct TYPE_3__ {int fixed; int value; } ;


 int WSDL_CACHE_PUT_1 (int,int *) ;
 int WSDL_CACHE_PUT_INT (int ,int *) ;

__attribute__((used)) static void sdl_serialize_resriction_int(sdlRestrictionIntPtr x, smart_str *out)
{
 if (x) {
  WSDL_CACHE_PUT_1(1, out);
  WSDL_CACHE_PUT_INT(x->value, out);
  WSDL_CACHE_PUT_1(x->fixed, out);
 } else {
  WSDL_CACHE_PUT_1(0, out);
 }
}
