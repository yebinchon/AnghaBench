
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sub {int valid; scalar_t__ id; scalar_t__ src_h; scalar_t__ src_w; scalar_t__ count; } ;
struct sd_lavc_priv {int new_id; struct sub* subs; } ;


 int MAX_QUEUE ;
 int clear_sub (struct sub*) ;

__attribute__((used)) static void alloc_sub(struct sd_lavc_priv *priv)
{
    clear_sub(&priv->subs[MAX_QUEUE - 1]);
    struct sub tmp = priv->subs[MAX_QUEUE - 1];
    for (int n = MAX_QUEUE - 1; n > 0; n--)
        priv->subs[n] = priv->subs[n - 1];
    priv->subs[0] = tmp;

    priv->subs[0].valid = 0;
    priv->subs[0].count = 0;
    priv->subs[0].src_w = 0;
    priv->subs[0].src_h = 0;
    priv->subs[0].id = priv->new_id++;
}
