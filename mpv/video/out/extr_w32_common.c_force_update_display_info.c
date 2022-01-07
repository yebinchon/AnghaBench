
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_w32_state {scalar_t__ monitor; } ;


 int update_display_info (struct vo_w32_state*) ;

__attribute__((used)) static void force_update_display_info(struct vo_w32_state *w32)
{
    w32->monitor = 0;
    update_display_info(w32);
}
