
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RxControl {int dummy; } ;
typedef int lua_State ;


 int SNIFFER_BUF2_BUF_SIZE ;
 int packet_subhex (int *,int,int ) ;

__attribute__((used)) static int packet_frame_subhex(lua_State *L) {
  return packet_subhex(L, sizeof(struct RxControl), SNIFFER_BUF2_BUF_SIZE);
}
