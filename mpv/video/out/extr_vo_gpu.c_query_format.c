
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {struct gpu_priv* priv; } ;
struct gpu_priv {int renderer; } ;


 int gl_video_check_format (int ,int) ;

__attribute__((used)) static int query_format(struct vo *vo, int format)
{
    struct gpu_priv *p = vo->priv;
    if (!gl_video_check_format(p->renderer, format))
        return 0;
    return 1;
}
