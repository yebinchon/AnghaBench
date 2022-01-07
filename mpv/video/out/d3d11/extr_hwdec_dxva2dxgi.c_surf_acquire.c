
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_hwdec_mapper {struct priv* priv; } ;
struct queue_surf {int dummy; } ;
struct priv {int queue_len; size_t queue_pos; struct queue_surf** queue; } ;


 int MP_DBG (struct ra_hwdec_mapper*,char*,int) ;
 int MP_TARRAY_INSERT_AT (struct priv*,struct queue_surf**,int,size_t,struct queue_surf*) ;
 int MP_WARN (struct ra_hwdec_mapper*,char*) ;
 struct queue_surf* surf_create (struct ra_hwdec_mapper*) ;
 int surf_is_idle11 (struct ra_hwdec_mapper*,struct queue_surf*) ;
 int surf_wait_idle11 (struct ra_hwdec_mapper*,struct queue_surf*) ;

__attribute__((used)) static struct queue_surf *surf_acquire(struct ra_hwdec_mapper *mapper)
{
    struct priv *p = mapper->priv;

    if (!p->queue_len || !surf_is_idle11(mapper, p->queue[p->queue_pos])) {
        if (p->queue_len < 16) {
            struct queue_surf *surf = surf_create(mapper);
            if (!surf)
                return ((void*)0);


            MP_TARRAY_INSERT_AT(p, p->queue, p->queue_len, p->queue_pos, surf);
            MP_DBG(mapper, "Queue grew to %d surfaces\n", p->queue_len);
        } else {



            if (!surf_wait_idle11(mapper, p->queue[p->queue_pos]))
                return ((void*)0);
            MP_WARN(mapper, "Queue underflow!\n");
        }
    }
    return p->queue[p->queue_pos];
}
