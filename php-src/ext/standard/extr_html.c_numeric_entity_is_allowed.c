
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int unicode_cp_is_allowed (unsigned int,int) ;

__attribute__((used)) static inline int numeric_entity_is_allowed(unsigned uni_cp, int document_type)
{

 switch (document_type) {
 case 131:


  return uni_cp <= 0x10FFFF;
 case 130:





  return (uni_cp >= 0x20 && uni_cp <= 0x7E) ||
   (uni_cp >= 0x09 && uni_cp <= 0x0C && uni_cp != 0x0B) ||
   (uni_cp >= 0xA0 && uni_cp <= 0x10FFFF &&
    ((uni_cp & 0xFFFF) < 0xFFFE) &&
    (uni_cp < 0xFDD0 || uni_cp > 0xFDEF));
 case 129:
 case 128:


  return unicode_cp_is_allowed(uni_cp, document_type);
 default:
  return 1;
 }
}
