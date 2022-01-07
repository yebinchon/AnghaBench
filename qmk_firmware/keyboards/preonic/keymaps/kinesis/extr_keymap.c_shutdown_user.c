
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PLAY_SONG (int ) ;
 int _delay_ms (int) ;
 int stop_all_notes () ;
 int tone_goodbye ;

void shutdown_user()
{
  PLAY_SONG(tone_goodbye);
  _delay_ms(150);
  stop_all_notes();
}
