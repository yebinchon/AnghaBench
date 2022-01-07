
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_vsync_info {int dummy; } ;
struct vo {struct priv* priv; } ;
struct priv {struct vo_vsync_info vsync_info; } ;



__attribute__((used)) static void get_vsync(struct vo *vo, struct vo_vsync_info *info)
{
    struct priv *p = vo->priv;
    *info = p->vsync_info;
}
