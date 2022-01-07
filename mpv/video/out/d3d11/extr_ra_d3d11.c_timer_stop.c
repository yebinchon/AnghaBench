
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ra_d3d11 {int ctx; } ;
struct ra {struct ra_d3d11* priv; } ;
struct d3d_timer {int result; scalar_t__ disjoint; scalar_t__ ts_end; } ;
typedef struct d3d_timer ra_timer ;
typedef int ID3D11Asynchronous ;


 int ID3D11DeviceContext_End (int ,int *) ;

__attribute__((used)) static uint64_t timer_stop(struct ra *ra, ra_timer *ratimer)
{
    struct ra_d3d11 *p = ra->priv;
    struct d3d_timer *timer = ratimer;

    ID3D11DeviceContext_End(p->ctx, (ID3D11Asynchronous *)timer->ts_end);
    ID3D11DeviceContext_End(p->ctx, (ID3D11Asynchronous *)timer->disjoint);

    return timer->result;
}
