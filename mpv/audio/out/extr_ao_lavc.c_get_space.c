
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int aframesize; int framecount; } ;
struct ao {struct priv* priv; } ;



__attribute__((used)) static int get_space(struct ao *ao)
{
    struct priv *ac = ao->priv;

    return ac->aframesize * ac->framecount;
}
