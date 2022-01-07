
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {struct priv* priv; } ;
struct priv {size_t visible_surface; size_t output_surface; int * output_surfaces; } ;


 int MAX_OUTPUT_SURFACES ;
 int render_to_screen (struct priv*,int ) ;

__attribute__((used)) static void flip_page(struct vo *vo)
{
    struct priv *p = vo->priv;

    p->visible_surface = p->output_surface;
    render_to_screen(p, p->output_surfaces[p->output_surface]);
    p->output_surface = (p->output_surface + 1) % MAX_OUTPUT_SURFACES;
}
