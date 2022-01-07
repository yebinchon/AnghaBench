
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int PLAY_SONG (int ) ;
 int _ADJUST ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int muse_mode ;
 int plover_gb_song ;
 int plover_song ;
 int stop_all_notes () ;

void dip_update(uint8_t index, bool active)
{
  switch (index)
  {
  case 0:
    if (active)
    {



      layer_on(_ADJUST);
    }
    else
    {



      layer_off(_ADJUST);
    }
    break;
  case 1:
    if (active)
    {
      muse_mode = 1;
    }
    else
    {
      muse_mode = 0;



    }
  }
}
