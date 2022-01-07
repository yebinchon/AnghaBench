
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {struct priv* priv; } ;
struct priv {size_t current_buf; int * myximage; } ;


 int Display_Image (struct priv*,int ) ;

__attribute__((used)) static void flip_page(struct vo *vo)
{
    struct priv *p = vo->priv;
    Display_Image(p, p->myximage[p->current_buf]);
    p->current_buf = (p->current_buf + 1) % 2;
}
