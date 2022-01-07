
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct vo {struct priv* priv; } ;
struct TYPE_5__ {int name; } ;
struct priv {int renderer_index; TYPE_1__ renderer_info; int osd_format; int allow_sw; int renderer; int window; } ;
typedef TYPE_1__ SDL_RendererInfo ;


 int MP_ERR (struct vo*,char*,...) ;
 int MP_INFO (struct vo*,char*,int ) ;
 int SDL_CreateRenderer (int ,int,int ) ;
 scalar_t__ SDL_GetRenderDriverInfo (int,TYPE_1__*) ;
 scalar_t__ SDL_GetRendererInfo (int ,TYPE_1__*) ;
 int destroy_renderer (struct vo*) ;
 int is_good_renderer (TYPE_1__*,char const*,int ,int *) ;

__attribute__((used)) static bool try_create_renderer(struct vo *vo, int i, const char *driver)
{
    struct priv *vc = vo->priv;


    SDL_RendererInfo ri;
    if (SDL_GetRenderDriverInfo(i, &ri))
        return 0;
    if (!is_good_renderer(&ri, driver, vc->allow_sw, ((void*)0)))
        return 0;

    vc->renderer = SDL_CreateRenderer(vc->window, i, 0);
    if (!vc->renderer) {
        MP_ERR(vo, "SDL_CreateRenderer failed\n");
        return 0;
    }

    if (SDL_GetRendererInfo(vc->renderer, &vc->renderer_info)) {
        MP_ERR(vo, "SDL_GetRendererInfo failed\n");
        destroy_renderer(vo);
        return 0;
    }

    if (!is_good_renderer(&vc->renderer_info, ((void*)0), vc->allow_sw,
                          &vc->osd_format)) {
        MP_ERR(vo, "Renderer '%s' does not fulfill "
                                  "requirements on this system\n",
                                  vc->renderer_info.name);
        destroy_renderer(vo);
        return 0;
    }

    if (vc->renderer_index != i) {
        MP_INFO(vo, "Using %s\n", vc->renderer_info.name);
        vc->renderer_index = i;
    }

    return 1;
}
