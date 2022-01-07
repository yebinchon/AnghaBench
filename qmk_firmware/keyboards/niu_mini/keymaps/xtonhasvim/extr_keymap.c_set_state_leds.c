
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int C_BLU ;
 int C_GRN ;
 int C_ORG ;
 int C_PRP ;
 int C_RED ;
 int C_YAN ;
 int biton32 (int ) ;
 int layer_state ;
 int rgbflag (int ,int ) ;
 int rgblight_get_mode () ;
 int vstate ;

void set_state_leds(void) {
  if (rgblight_get_mode() == 1) {
    switch (biton32(layer_state)) {
    case 128:
      rgbflag(C_BLU, C_GRN);
      break;
    case 131:
      rgbflag(C_BLU, C_RED);
      break;
    case 133:
      rgbflag(C_BLU, C_PRP);
      break;
    case 129:
      rgbflag(C_RED, C_PRP);
      break;
    case 130:
      rgbflag(C_RED, C_GRN);
      break;
    case 132:
      switch(vstate) {
        case 137:
        case 136:
        case 135:
          rgbflag(C_GRN, C_YAN);
          break;
        case 143:
        case 142:
          rgbflag(C_GRN, C_ORG);
          break;
        case 141:
        case 140:
          rgbflag(C_GRN, C_RED);
          break;
        case 139:
          rgbflag(C_GRN, C_BLU);
          break;
        case 134:
          rgbflag(C_GRN, C_PRP);
          break;
        case 138:
        default:
          rgbflag(C_GRN, C_GRN);
          break;
      }
      break;
    default:
      rgbflag(C_YAN, C_YAN);
      break;
    }
  }
}
