
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 int FN_LAYER ;

 int TIMER_DIFF_16 (int ,int ) ;
 int activateRelativity () ;
 int deactivateRelativity () ;
 int didFn ;
 int fnTimeout ;
 int fnTimer ;
 int isFn ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int timer_read () ;

bool updateLayerState(uint16_t keycode, keyrecord_t *record)
{

  if (record->event.pressed)
  {
    switch (keycode)
    {
      case 128:
        fnTimer = timer_read();
        layer_on(FN_LAYER);
        isFn = 1;
        return 0;
    }
    if (isFn)
    {
      didFn = 1;
      return 1;
    }
  }
  else
  {
    switch(keycode)
    {
      case 128:
        layer_off(FN_LAYER);
        if (!didFn)
        {
          activateRelativity();

        }
        didFn = 0;
        isFn = 0;
        return 0;
    }
  }
  return 1;
}
