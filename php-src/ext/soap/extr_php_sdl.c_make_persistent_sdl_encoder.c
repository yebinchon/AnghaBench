
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* encodePtr ;
typedef int encode ;
struct TYPE_7__ {scalar_t__ sdl_type; void* ns; void* type_str; } ;
struct TYPE_8__ {TYPE_1__ details; } ;
typedef int HashTable ;


 int make_persistent_sdl_type_ref (scalar_t__*,int *,int *) ;
 TYPE_2__* malloc (int) ;
 int memset (TYPE_2__*,int ,int) ;
 void* strdup (void*) ;

__attribute__((used)) static encodePtr make_persistent_sdl_encoder(encodePtr enc, HashTable *ptr_map, HashTable *bp_types, HashTable *bp_encoders)
{
 encodePtr penc = ((void*)0);

 penc = malloc(sizeof(encode));
 memset(penc, 0, sizeof(encode));

 *penc = *enc;

 if (penc->details.type_str) {
  penc->details.type_str = strdup(penc->details.type_str);
 }
 if (penc->details.ns) {
  penc->details.ns = strdup(penc->details.ns);
 }

 if (penc->details.sdl_type) {
  make_persistent_sdl_type_ref(&penc->details.sdl_type, ptr_map, bp_types);
 }

 return penc;
}
