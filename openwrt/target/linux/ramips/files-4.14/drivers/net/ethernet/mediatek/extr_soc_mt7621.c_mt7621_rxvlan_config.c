
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MT7621_CDMP_EG_CTRL ;
 int fe_w32 (int,int ) ;

__attribute__((used)) static void mt7621_rxvlan_config(bool enable)
{
 if (enable)
  fe_w32(1, MT7621_CDMP_EG_CTRL);
 else
  fe_w32(0, MT7621_CDMP_EG_CTRL);
}
