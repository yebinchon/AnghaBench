
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum entity_charset { ____Placeholder_entity_charset } entity_charset ;


 int assert (int) ;
 size_t php_mb2_int_to_char (unsigned char*,unsigned int) ;
 size_t php_utf32_utf8 (unsigned char*,unsigned int) ;

__attribute__((used)) static inline size_t write_octet_sequence(unsigned char *buf, enum entity_charset charset, unsigned code) {

 switch (charset) {
 case 128:
  return php_utf32_utf8(buf, code);

 case 141:
 case 135:
 case 140:
 case 131:
 case 136:
 case 139:
 case 134:
 case 130:

  *buf = code;
  return 1;

 case 138:
 case 137:
 case 129:
 case 132:
  *buf = code;
  return 1;


 case 133:






  *buf = code;
  return 1;


 default:
  assert(0);
  return 0;
 }
}
