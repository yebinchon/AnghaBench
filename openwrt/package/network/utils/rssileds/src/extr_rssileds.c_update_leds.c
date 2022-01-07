
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int boffset; int bfactor; int minq; int maxq; struct TYPE_3__* next; int led; } ;
typedef TYPE_1__ rule_t ;


 int set_led (int ,unsigned char) ;

void update_leds(rule_t *rules, int q)
{
 rule_t *rule = rules;
 while (rule)
 {
  int b;

  b = ( q + rule->boffset ) * rule->bfactor;
  if ( b < 0 )
   b=0;
  if ( b > 255 )
   b=255;

  if ( q >= rule->minq && q <= rule->maxq )
   set_led(rule->led, (unsigned char)b);
  else
   set_led(rule->led, 0);

  rule = rule->next;
 }
}
