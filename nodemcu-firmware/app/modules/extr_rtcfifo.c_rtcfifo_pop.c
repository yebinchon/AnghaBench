
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sample_t ;
typedef int lua_State ;


 int check_fifo_magic (int *) ;
 int extract_sample (int *,int *) ;
 int rtc_fifo_pop_sample (int *) ;

__attribute__((used)) static int rtcfifo_pop (lua_State *L)
{
  check_fifo_magic (L);

  sample_t s;
  if (!rtc_fifo_pop_sample (&s))
    return 0;
  else
    return extract_sample (L, &s);
}
