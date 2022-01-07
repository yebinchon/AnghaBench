
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int avrctx; } ;


 int swr_get_out_samples (int ,int) ;

__attribute__((used)) static int get_out_samples(struct priv *p, int in_samples)
{
    return swr_get_out_samples(p->avrctx, in_samples);
}
