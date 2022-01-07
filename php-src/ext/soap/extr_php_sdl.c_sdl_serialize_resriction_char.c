
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int smart_str ;
typedef TYPE_1__* sdlRestrictionCharPtr ;
struct TYPE_3__ {int fixed; int value; } ;


 int WSDL_CACHE_PUT_1 (int,int *) ;
 int sdl_serialize_string (int ,int *) ;

__attribute__((used)) static void sdl_serialize_resriction_char(sdlRestrictionCharPtr x, smart_str *out)
{
 if (x) {
  WSDL_CACHE_PUT_1(1, out);
  sdl_serialize_string(x->value, out);
  WSDL_CACHE_PUT_1(x->fixed, out);
 } else {
  WSDL_CACHE_PUT_1(0, out);
 }
}
