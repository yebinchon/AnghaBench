
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo {struct priv* priv; } ;
struct TYPE_2__ {scalar_t__ sdl; } ;
struct priv {TYPE_1__ osd_format; } ;
typedef int SDL_Texture ;


 int MP_ERR (struct vo*,char*) ;
 int SDL_ConvertPixels (int,int,scalar_t__,void*,int,scalar_t__,void*,int) ;
 scalar_t__ SDL_LockTexture (int *,int *,void**,int*) ;
 scalar_t__ SDL_PIXELFORMAT_ARGB8888 ;
 int SDL_UnlockTexture (int *) ;
 int SDL_UpdateTexture (int *,int *,void*,int) ;

__attribute__((used)) static inline void upload_to_texture(struct vo *vo, SDL_Texture *tex,
                                     int w, int h, void *bitmap, int stride)
{
    struct priv *vc = vo->priv;

    if (vc->osd_format.sdl == SDL_PIXELFORMAT_ARGB8888) {



        SDL_UpdateTexture(tex, ((void*)0), bitmap, stride);
        return;
    }

    void *pixels;
    int pitch;
    if (SDL_LockTexture(tex, ((void*)0), &pixels, &pitch)) {
        MP_ERR(vo, "Could not lock texture\n");
    } else {
        SDL_ConvertPixels(w, h, SDL_PIXELFORMAT_ARGB8888,
                          bitmap, stride,
                          vc->osd_format.sdl,
                          pixels, pitch);
        SDL_UnlockTexture(tex);
    }
}
