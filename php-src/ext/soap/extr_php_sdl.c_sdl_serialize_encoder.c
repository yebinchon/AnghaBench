
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int smart_str ;
typedef TYPE_2__* encodePtr ;
struct TYPE_4__ {int sdl_type; int ns; int type_str; int type; } ;
struct TYPE_5__ {TYPE_1__ details; } ;
typedef int HashTable ;


 int WSDL_CACHE_PUT_INT (int ,int *) ;
 int sdl_serialize_string (int ,int *) ;
 int sdl_serialize_type_ref (int ,int *,int *) ;

__attribute__((used)) static void sdl_serialize_encoder(encodePtr enc, HashTable *tmp_types, smart_str *out)
{
 WSDL_CACHE_PUT_INT(enc->details.type, out);
 sdl_serialize_string(enc->details.type_str, out);
 sdl_serialize_string(enc->details.ns, out);
 sdl_serialize_type_ref(enc->details.sdl_type, tmp_types, out);
}
