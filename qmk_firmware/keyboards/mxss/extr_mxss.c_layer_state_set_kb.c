
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ hue; int sat; } ;


 size_t biton32 (int ) ;
 int fled_val ;
 int * fleds ;
 TYPE_1__* layer_colors ;
 size_t lc_size ;
 int sethsv (scalar_t__,int ,int ,int *) ;
 int setrgb (int ,int ,int ,int *) ;

uint32_t layer_state_set_kb(uint32_t state) {


    uint8_t layer = biton32(state);

    if (layer < lc_size && !(layer_colors[layer].hue == 0 && layer_colors[layer].hue == 0))
        sethsv(layer_colors[layer].hue, layer_colors[layer].sat, fled_val, &fleds[1]);
    else
        setrgb(0, 0, 0, &fleds[1]);

    return state;
}
