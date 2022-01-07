
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int tsm_age_t ;
struct tsm_screen_attr {int dummy; } ;
struct tsm_screen {int dummy; } ;


 unsigned int HEIGHT ;
 unsigned int WIDTH ;
 int abort () ;

__attribute__((used)) static int term_draw_cell(struct tsm_screen *screen, uint32_t id,
                          const uint32_t *ch, size_t len,
                          unsigned int cwidth, unsigned int posx,
                          unsigned int posy,
                          const struct tsm_screen_attr *attr,
                          tsm_age_t age, void *data)
{
  if (posx >= WIDTH || posy >= HEIGHT)
    abort();
  return 0;
}
