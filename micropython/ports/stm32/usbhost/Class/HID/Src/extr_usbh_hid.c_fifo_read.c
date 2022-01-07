
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_3__ {int lock; size_t tail; size_t head; size_t size; int * buf; } ;
typedef TYPE_1__ FIFO_TypeDef ;



uint16_t fifo_read(FIFO_TypeDef * f, void * buf, uint16_t nbytes)
{
  uint16_t i;
  uint8_t * p;
  p = buf;

  if(f->lock == 0)
  {
    f->lock = 1;
    for(i=0; i < nbytes; i++)
    {
      if( f->tail != f->head )
      {
        *p++ = f->buf[f->tail];
        f->tail++;
        if( f->tail == f->size )
        {
          f->tail = 0;
        }
      } else
      {
        f->lock = 0;
        return i;
      }
    }
  }
  f->lock = 0;
  return nbytes;
}
