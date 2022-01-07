
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int in_rate; int avrctx; scalar_t__ out_rate; } ;
typedef int int64_t ;


 double swr_get_delay (int ,int) ;

__attribute__((used)) static double get_delay(struct priv *p)
{
    int64_t base = p->in_rate * (int64_t)p->out_rate;
    return swr_get_delay(p->avrctx, base) / (double)base;
}
