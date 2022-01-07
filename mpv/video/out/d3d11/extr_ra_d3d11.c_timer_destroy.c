
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra {int dummy; } ;
struct d3d_timer {int disjoint; int ts_end; int ts_start; } ;
typedef struct d3d_timer ra_timer ;


 int SAFE_RELEASE (int ) ;
 int talloc_free (struct d3d_timer*) ;

__attribute__((used)) static void timer_destroy(struct ra *ra, ra_timer *ratimer)
{
    if (!ratimer)
        return;
    struct d3d_timer *timer = ratimer;

    SAFE_RELEASE(timer->ts_start);
    SAFE_RELEASE(timer->ts_end);
    SAFE_RELEASE(timer->disjoint);
    talloc_free(timer);
}
