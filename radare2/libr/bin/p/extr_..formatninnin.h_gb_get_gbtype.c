
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut8 ;


 scalar_t__ GB_GBC ;
 scalar_t__ GB_SGB ;
 int strcpy (char*,char*) ;

void gb_get_gbtype(char *type, ut8 foo, ut8 bar){
 if (foo==GB_SGB) {
  strcpy (type, "SuperGameboy-Rom");
 } else {
  if (bar==GB_GBC) {
   strcpy (type, "GameboyColor-Rom");
  } else {
   strcpy (type, "Gameboy-Rom");
  }
 }
}
