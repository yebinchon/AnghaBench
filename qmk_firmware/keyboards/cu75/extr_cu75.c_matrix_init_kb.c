
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;
 int DDRC ;
 int PLAY_NOTE_ARRAY (int ,int,int ) ;
 int PORTB ;
 int PORTC ;
 int STACCATO ;
 int audio_init () ;
 int cbi (int ,int) ;
 int issi_init () ;
 int matrix_init_user () ;
 int sbi (int ,int) ;
 int test_sound ;

void matrix_init_kb(void)
{


    matrix_init_user();
    sbi(DDRC, 6);
    cbi(PORTC, 6);




}
