
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ptr; } ;
typedef TYPE_1__ nk_handle ;
struct TYPE_5__ {int font; } ;
typedef TYPE_2__ NkAllegro5Font ;


 float al_get_text_width (int ,char*) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static float
nk_allegro5_font_get_text_width(nk_handle handle, float height, const char *text, int len)
{
    NkAllegro5Font *font = (NkAllegro5Font*)handle.ptr;
    if (!font || !text) {
        return 0;
    }




    char strcpy[len+1];
    strncpy((char*)&strcpy, text, len);
    strcpy[len] = '\0';
    return al_get_text_width(font->font, strcpy);
}
