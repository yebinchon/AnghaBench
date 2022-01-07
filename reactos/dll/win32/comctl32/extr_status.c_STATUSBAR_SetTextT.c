
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WORD ;
typedef char WCHAR ;
struct TYPE_5__ {int style; char* text; int bound; } ;
struct TYPE_4__ {int numParts; int Self; TYPE_2__* parts; TYPE_2__ part0; } ;
typedef TYPE_1__ STATUS_INFO ;
typedef TYPE_2__ STATUSWINDOWPART ;
typedef char* LPWSTR ;
typedef int LPCSTR ;
typedef int INT ;
typedef int DWORD ;
typedef int BOOL ;


 char* Alloc (int) ;
 int CP_ACP ;
 int FALSE ;
 int Free (char*) ;
 int InvalidateRect (int ,int *,int ) ;
 int MultiByteToWideChar (int ,int ,int ,int,char*,int) ;
 int SBT_OWNERDRAW ;
 int TRACE (char*,int,char*) ;
 int TRUE ;
 int UpdateWindow (int ) ;
 char* debugstr_t (char*,int ) ;
 int isprintW (char) ;
 int lstrcmpW (char*,char*) ;
 int strcpyW (char*,char*) ;
 int strlenW (char*) ;

__attribute__((used)) static BOOL
STATUSBAR_SetTextT (STATUS_INFO *infoPtr, INT nPart, WORD style,
      LPWSTR text, BOOL isW)
{
    STATUSWINDOWPART *part=((void*)0);
    BOOL changed = FALSE;
    INT oldStyle;

    if (style & SBT_OWNERDRAW) {
         TRACE("part %d, text %p\n",nPart,text);
    }
    else TRACE("part %d, text %s\n", nPart, debugstr_t(text, isW));




    if (nPart == 0x00ff) {
 part = &infoPtr->part0;
    } else {
 if (infoPtr->parts && nPart >= 0 && nPart < infoPtr->numParts) {
     part = &infoPtr->parts[nPart];
 }
    }
    if (!part) return FALSE;

    if (part->style != style)
 changed = TRUE;

    oldStyle = part->style;
    part->style = style;
    if (style & SBT_OWNERDRAW) {
        if (!(oldStyle & SBT_OWNERDRAW))
            Free (part->text);
        part->text = text;
    } else {
 LPWSTR ntext;
 WCHAR *idx;

 if (text && !isW) {
     LPCSTR atxt = (LPCSTR)text;
            DWORD len = MultiByteToWideChar( CP_ACP, 0, atxt, -1, ((void*)0), 0 );
     ntext = Alloc( (len + 1)*sizeof(WCHAR) );
     if (!ntext) return FALSE;
            MultiByteToWideChar( CP_ACP, 0, atxt, -1, ntext, len );
 } else if (text) {
     ntext = Alloc( (strlenW(text) + 1)*sizeof(WCHAR) );
     if (!ntext) return FALSE;
     strcpyW (ntext, text);
 } else ntext = 0;


 if (ntext) {
     idx = ntext;
     while (*idx) {
         if(!isprintW(*idx))
             *idx = ' ';
         idx++;
     }
 }


 if (text) {
     if (!changed && part->text && !lstrcmpW(ntext, part->text)) {
  Free(ntext);
  return TRUE;
     }
 } else {
     if (!changed && !part->text)
  return TRUE;
 }

 if (!(oldStyle & SBT_OWNERDRAW))
     Free (part->text);
 part->text = ntext;
    }
    InvalidateRect(infoPtr->Self, &part->bound, FALSE);
    UpdateWindow(infoPtr->Self);

    return TRUE;
}
