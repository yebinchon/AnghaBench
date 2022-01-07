
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int gunichar ;
struct TYPE_2__ {int text_context; } ;
typedef int PangoFontDescription ;
typedef int PangoFont ;
typedef int PangoCoverage ;


 int FALSE ;
 unsigned int G_N_ELEMENTS (char const* const*) ;
 scalar_t__ PANGO_COVERAGE_EXACT ;
 int g_object_unref (int *) ;
 TYPE_1__ gui ;
 int * pango_context_load_font (int ,int *) ;
 scalar_t__ pango_coverage_get (int *,int) ;
 int pango_coverage_unref (int *) ;
 int * pango_font_get_coverage (int *,int ) ;
 int pango_language_from_string (char const* const) ;

__attribute__((used)) static int
is_cjk_font(PangoFontDescription *font_desc)
{
    static const char * const cjk_langs[] =
 {"zh_CN", "zh_TW", "zh_HK", "ja", "ko"};

    PangoFont *font;
    unsigned i;
    int is_cjk = FALSE;

    font = pango_context_load_font(gui.text_context, font_desc);

    if (font == ((void*)0))
 return FALSE;

    for (i = 0; !is_cjk && i < G_N_ELEMENTS(cjk_langs); ++i)
    {
 PangoCoverage *coverage;
 gunichar uc;

 coverage = pango_font_get_coverage(
  font, pango_language_from_string(cjk_langs[i]));

 if (coverage != ((void*)0))
 {
     uc = (cjk_langs[i][0] == 'k') ? 0xAC00 : 0x4E00;
     is_cjk = (pango_coverage_get(coverage, uc) == PANGO_COVERAGE_EXACT);
     pango_coverage_unref(coverage);
 }
    }

    g_object_unref(font);

    return is_cjk;
}
