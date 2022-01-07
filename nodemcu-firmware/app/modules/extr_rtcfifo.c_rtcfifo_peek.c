
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int sample_t ;
typedef int lua_State ;


 int check_fifo_magic (int *) ;
 int extract_sample (int *,int *) ;
 scalar_t__ lua_isnumber (int *,int) ;
 int lua_tonumber (int *,int) ;
 int rtc_fifo_peek_sample (int *,int ) ;

__attribute__((used)) static int rtcfifo_peek (lua_State *L)
{
  check_fifo_magic (L);

  sample_t s;
  uint32_t offs = 0;
  if (lua_isnumber (L, 1))
    offs = lua_tonumber (L, 1);
  if (!rtc_fifo_peek_sample (&s, offs))
    return 0;
  else
    return extract_sample (L, &s);
}
