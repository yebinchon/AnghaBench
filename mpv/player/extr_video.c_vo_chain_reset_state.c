
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_chain {int underrun; int vo; } ;


 int vo_seek_reset (int ) ;

__attribute__((used)) static void vo_chain_reset_state(struct vo_chain *vo_c)
{
    vo_seek_reset(vo_c->vo);
    vo_c->underrun = 0;
}
