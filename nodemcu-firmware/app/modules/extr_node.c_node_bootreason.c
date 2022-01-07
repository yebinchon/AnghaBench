
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct rst_info {scalar_t__ reason; scalar_t__ exccause; scalar_t__ epc1; scalar_t__ epc2; scalar_t__ epc3; scalar_t__ excvaddr; scalar_t__ depc; } ;
typedef int lua_State ;


 scalar_t__ REASON_EXCEPTION_RST ;
 int lua_pushinteger (int *,scalar_t__) ;
 scalar_t__ rtc_get_reset_reason () ;
 struct rst_info* system_get_rst_info () ;

__attribute__((used)) static int node_bootreason (lua_State *L)
{
  const struct rst_info *ri = system_get_rst_info ();
  uint32_t arr[8] = {
    rtc_get_reset_reason(),
    ri->reason,
    ri->exccause, ri->epc1, ri->epc2, ri->epc3, ri->excvaddr, ri->depc
  };
  int i, n = ((ri->reason != REASON_EXCEPTION_RST) ? 2 : 8);
  for (i = 0; i < n; ++i)
    lua_pushinteger (L, arr[i]);
  return n;
}
