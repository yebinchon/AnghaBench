
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct atm_vcc {int dummy; } ;
struct TYPE_4__ {unsigned int conn_table; TYPE_1__* conn; } ;
struct TYPE_3__ {struct atm_vcc* vcc; } ;


 int MAX_PVC_NUMBER ;
 TYPE_2__ g_atm_priv_data ;

__attribute__((used)) static inline int find_vcc(struct atm_vcc *vcc)
{
 int i;
 unsigned int bit;

 for ( i = 0, bit = 1; i < MAX_PVC_NUMBER; i++, bit <<= 1 ) {
  if ( (g_atm_priv_data.conn_table & bit) != 0
   && g_atm_priv_data.conn[i].vcc == vcc )
  return i;
 }

 return -1;
}
