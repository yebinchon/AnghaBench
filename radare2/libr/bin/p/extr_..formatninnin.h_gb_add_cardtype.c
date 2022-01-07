
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 int GB_CAM ;



 char** gb_card_type_str ;
 int strcat (char*,char*) ;

void gb_add_cardtype(char *type, ut8 cardcode){
 strcat (type,"\ncard\t");
 switch (cardcode){
  case 128:
  case 129:
  case 130:
   strcat (type,gb_card_type_str[cardcode-240]);
   break;
  case 0x15:
  case 0x16:
  case 0x17:
   strcat (type,"XXX");
   break;
  default:
   if (cardcode>GB_CAM) {
    strcat (type,"XXX");
    return;
   }
   strcat (type,gb_card_type_str[cardcode]);
   break;
 }
}
