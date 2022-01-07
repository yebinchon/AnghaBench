
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sub {double pts; double endpts; int valid; } ;
struct sd_lavc_priv {struct sub* subs; } ;


 int MAX_QUEUE ;
 double MP_NOPTS_VALUE ;

__attribute__((used)) static struct sub *get_current(struct sd_lavc_priv *priv, double pts)
{
    struct sub *current = ((void*)0);
    for (int n = 0; n < MAX_QUEUE; n++) {
        struct sub *sub = &priv->subs[n];
        if (!sub->valid)
            continue;
        if (pts == MP_NOPTS_VALUE ||
            ((sub->pts == MP_NOPTS_VALUE || pts >= sub->pts) &&
             (sub->endpts == MP_NOPTS_VALUE || pts < sub->endpts)))
        {

            if (sub->endpts == MP_NOPTS_VALUE && pts >= sub->pts + 60)
                break;
            current = sub;
            break;
        }
    }
    return current;
}
