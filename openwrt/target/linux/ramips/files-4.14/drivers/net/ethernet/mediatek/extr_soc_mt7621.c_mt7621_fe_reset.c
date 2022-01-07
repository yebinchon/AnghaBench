
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MT7621_RESET_FE ;
 int fe_reset (int ) ;

__attribute__((used)) static void mt7621_fe_reset(void)
{
 fe_reset(MT7621_RESET_FE);
}
