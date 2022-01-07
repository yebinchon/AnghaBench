
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {struct priv* priv; } ;
struct priv {int cfg_fps; } ;
typedef int int64_t ;


 int mp_sleep_us (int) ;
 int mp_time_us () ;

__attribute__((used)) static void flip_page(struct vo *vo)
{
    struct priv *p = vo->priv;
    if (p->cfg_fps) {
        int64_t ft = 1e6 / p->cfg_fps;
        int64_t prev_vsync = mp_time_us() / ft;
        int64_t target_time = (prev_vsync + 1) * ft;
        for (;;) {
            int64_t now = mp_time_us();
            if (now >= target_time)
                break;
            mp_sleep_us(target_time - now);
        }
    }
}
