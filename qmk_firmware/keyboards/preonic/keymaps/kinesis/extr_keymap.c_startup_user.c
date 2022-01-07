
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PLAY_SONG (int ) ;
 int _delay_ms (int) ;
 int tone_startup ;

void startup_user()
{
  _delay_ms(20);
  PLAY_SONG(tone_startup);
}
