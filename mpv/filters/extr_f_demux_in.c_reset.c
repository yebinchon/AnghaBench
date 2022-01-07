
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int eof_returned; } ;
struct mp_filter {struct priv* priv; } ;



__attribute__((used)) static void reset(struct mp_filter *f)
{
    struct priv *p = f->priv;

    p->eof_returned = 0;
}
