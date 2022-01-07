
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nk_text_edit {int dummy; } ;
typedef int nk_handle ;


 char* SDL_GetClipboardText () ;
 int nk_strlen (char const*) ;
 int nk_textedit_paste (struct nk_text_edit*,char const*,int ) ;

__attribute__((used)) static void
nk_sdl_clipboard_paste(nk_handle usr, struct nk_text_edit *edit)
{
    const char *text = SDL_GetClipboardText();
    if (text) nk_textedit_paste(edit, text, nk_strlen(text));
    (void)usr;
}
