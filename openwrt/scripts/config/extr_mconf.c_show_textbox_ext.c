
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int update_text_fn ;


 int dialog_clear () ;
 int dialog_textbox (char const*,char*,int,int,int*,int*,int*,int ,void*) ;

__attribute__((used)) static int show_textbox_ext(const char *title, char *text, int r, int c, int
       *keys, int *vscroll, int *hscroll, update_text_fn
       update_text, void *data)
{
 dialog_clear();
 return dialog_textbox(title, text, r, c, keys, vscroll, hscroll,
         update_text, data);
}
