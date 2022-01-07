
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ PLVR ;
 int PV_LH ;
 int PV_LP ;
 int PV_LR ;
 int PV_O ;
 int PV_RG ;
 int PV_RL ;
 scalar_t__ biton32 (int ) ;
 int layer_off (scalar_t__) ;
 int layer_on (scalar_t__) ;
 int layer_state ;
 int register_code (int ) ;
 int unregister_code (int ) ;

__attribute__((used)) static void toggle_steno(int pressed)
{
  uint8_t layer = biton32(layer_state);

  if (pressed) {
    if (layer != PLVR) layer_on(PLVR); else layer_off(PLVR);

    register_code(PV_LP);
    register_code(PV_LH);
    register_code(PV_LR);
    register_code(PV_O);
    register_code(PV_RL);
    register_code(PV_RG);
  } else {
    unregister_code(PV_LP);
    unregister_code(PV_LH);
    unregister_code(PV_LR);
    unregister_code(PV_O);
    unregister_code(PV_RL);
    unregister_code(PV_RG);
  }
}
