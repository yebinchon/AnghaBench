
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_d3d11 {int ctx; } ;
struct ra {struct ra_d3d11* priv; } ;
struct d3d_timer {scalar_t__ ts_start; scalar_t__ disjoint; int result; } ;
typedef struct d3d_timer ra_timer ;
typedef int ID3D11Asynchronous ;


 int ID3D11DeviceContext_Begin (int ,int *) ;
 int ID3D11DeviceContext_End (int ,int *) ;
 int timer_get_result (struct ra*,struct d3d_timer*) ;

__attribute__((used)) static void timer_start(struct ra *ra, ra_timer *ratimer)
{
    struct ra_d3d11 *p = ra->priv;
    struct d3d_timer *timer = ratimer;


    timer->result = timer_get_result(ra, ratimer);

    ID3D11DeviceContext_Begin(p->ctx, (ID3D11Asynchronous *)timer->disjoint);
    ID3D11DeviceContext_End(p->ctx, (ID3D11Asynchronous *)timer->ts_start);
}
