
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int layer_name ;





 int biton32 (int ) ;
 int layer_state ;
 int snprintf (char*,int,char*,int ) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;

const char *read_layer_state(void) {
  static char layer_state_str[24];
  char layer_name[17];

  switch (biton32(layer_state)) {
    case 130:
      strcpy(layer_name, "Default");
      break;
    case 128:
      strcpy(layer_name, "Raise");
      break;
    case 129:
      strcpy(layer_name, "Lower");
      break;
    default:
      snprintf(layer_name, sizeof(layer_name), "Undef-%ld", layer_state);
  }

  strcpy(layer_state_str, "Layer: ");

  strcat(layer_state_str, layer_name);
  strcat(layer_state_str, "\n");
  return layer_state_str;
}
