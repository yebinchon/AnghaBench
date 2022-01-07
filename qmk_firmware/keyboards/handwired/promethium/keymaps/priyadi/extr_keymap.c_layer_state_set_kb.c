
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint32_t ;


 unsigned long _EMOJI ;
 unsigned long _EMPTY ;
 unsigned long _FUN ;
 unsigned long _GREEKL ;
 unsigned long _GREEKU ;
 unsigned long _NUM ;
 unsigned long _PUNC ;

uint32_t layer_state_set_kb(uint32_t state)
{

  if ((state & ((1UL<<_NUM) | (1UL<<_FUN))) == ((1UL<<_NUM) | (1UL<<_FUN))) {
    state |= (1UL<<_PUNC);
  } else {
    state &= ~(1UL<<_PUNC);
  }


  if (
    (state & ((1UL<<_EMPTY) | (1UL<<_GREEKU))) == ((1UL<<_EMPTY) | (1UL<<_GREEKU))
    || (state & ((1UL<<_EMPTY) | (1UL<<_GREEKL))) == ((1UL<<_EMPTY) | (1UL<<_GREEKL))
  ) {
    state |= (1UL<<_EMOJI);
  } else {
    state &= ~(1UL<<_EMOJI);
  }
  return state;
}
