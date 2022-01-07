
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int input; } ;
struct mp_filter {struct priv* priv; } ;


 int TA_FREEP (int *) ;
 int close_lavrr (struct priv*) ;

__attribute__((used)) static void destroy(struct mp_filter *f)
{
    struct priv *p = f->priv;

    close_lavrr(p);
    TA_FREEP(&p->input);
}
