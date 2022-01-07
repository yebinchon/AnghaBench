
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int hwndSelf; int * font; int * text; int tabs; int tabs_count; } ;
struct TYPE_8__ {double net_length; int index; int * ssa; } ;
struct TYPE_7__ {scalar_t__ iTabOrigin; int pTabStops; int iScale; int cTabStops; } ;
typedef TYPE_1__ SCRIPT_TABDEF ;
typedef int * SCRIPT_STRING_ANALYSIS ;
typedef TYPE_2__ LINEDEF ;
typedef int HRESULT ;
typedef int * HFONT ;
typedef scalar_t__ HDC ;
typedef TYPE_3__ EDITSTATE ;


 scalar_t__ FAILED (int ) ;
 int GdiGetCharDimensions (scalar_t__,int *,int *) ;
 scalar_t__ GetDC (int ) ;
 int ReleaseDC (int ,scalar_t__) ;
 int SSA_FALLBACK ;
 int SSA_GLYPHS ;
 int SSA_LINK ;
 int SSA_TAB ;
 int ScriptStringAnalyse (scalar_t__,int *,double,double,int,int,int,int *,int *,int *,TYPE_1__*,int *,int **) ;
 int * SelectObject (scalar_t__,int *) ;
 int WARN (char*,int ) ;

__attribute__((used)) static SCRIPT_STRING_ANALYSIS EDIT_UpdateUniscribeData_linedef(EDITSTATE *es, HDC dc, LINEDEF *line_def)
{
 if (!line_def)
  return ((void*)0);

 if (line_def->net_length && !line_def->ssa)
 {
  int index = line_def->index;
  HFONT old_font = ((void*)0);
  HDC udc = dc;
  SCRIPT_TABDEF tabdef;
  HRESULT hr;

  if (!udc)
   udc = GetDC(es->hwndSelf);
  if (es->font)
   old_font = SelectObject(udc, es->font);

  tabdef.cTabStops = es->tabs_count;
  tabdef.iScale = GdiGetCharDimensions(udc, ((void*)0), ((void*)0));
  tabdef.pTabStops = es->tabs;
  tabdef.iTabOrigin = 0;

  hr = ScriptStringAnalyse(udc, &es->text[index], line_def->net_length,
                                         (1.5*line_def->net_length+16), -1,
                                         SSA_LINK|SSA_FALLBACK|SSA_GLYPHS|SSA_TAB, -1,
                                         ((void*)0), ((void*)0), ((void*)0), &tabdef, ((void*)0), &line_def->ssa);
  if (FAILED(hr))
  {
   WARN("ScriptStringAnalyse failed (%x)\n",hr);
   line_def->ssa = ((void*)0);
  }

  if (es->font)
   SelectObject(udc, old_font);
  if (udc != dc)
   ReleaseDC(es->hwndSelf, udc);
 }

 return line_def->ssa;
}
