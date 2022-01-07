
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int const ut8 ;
typedef int ut32 ;
struct TYPE_4__ {int length; int const* sector; } ;
typedef TYPE_1__ RASN1Object ;


 int R_FREE (TYPE_1__*) ;
 TYPE_1__* asn1_parse_header (int const*,int,int ) ;

__attribute__((used)) static ut32 r_asn1_count_objects (const ut8 *buffer, ut32 length) {
 if (!buffer || !length) {
  return 0;
 }
 ut32 counter = 0;
 RASN1Object *object = ((void*)0);
 const ut8 *next = buffer;
 const ut8 *end = buffer + length;
 while (next >= buffer && next < end) {

  object = asn1_parse_header (next, end - next, 0);
  if (!object || next == object->sector) {
   R_FREE (object);
   break;
  }
  next = object->sector + object->length;
  counter++;
  R_FREE (object);
 }
 R_FREE (object);
 return counter;
}
