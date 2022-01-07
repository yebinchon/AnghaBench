
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


struct TYPE_32__ {scalar_t__** cid_map; size_t** unicode_map; int suppliment; int ordering; int registry; } ;
struct TYPE_31__ {scalar_t__ to_unicode_fn; int attr; } ;
struct TYPE_30__ {int mmgr; int error; int stream; int before_write_fn; int attr; } ;
struct TYPE_29__ {TYPE_5__* map_stream; TYPE_6__* encoder; TYPE_3__* fontdef; } ;
struct TYPE_26__ {scalar_t__ top; scalar_t__ bottom; } ;
struct TYPE_28__ {int missing_width; TYPE_1__ font_bbox; int attr; } ;
struct TYPE_27__ {scalar_t__ embedding; } ;
typedef int HPDF_Xref ;
typedef size_t HPDF_UNICODE ;
typedef scalar_t__ HPDF_UINT16 ;
typedef int HPDF_UINT ;
typedef TYPE_2__* HPDF_TTFontDefAttr ;
typedef scalar_t__ HPDF_STATUS ;
typedef int HPDF_INT32 ;
typedef int HPDF_INT16 ;
typedef int HPDF_INT ;
typedef TYPE_3__* HPDF_FontDef ;
typedef TYPE_4__* HPDF_FontAttr ;
typedef TYPE_5__* HPDF_Font ;
typedef TYPE_6__* HPDF_Encoder ;
typedef TYPE_5__* HPDF_Dict ;
typedef TYPE_8__* HPDF_CMapEncoderAttr ;
typedef scalar_t__ HPDF_BYTE ;
typedef TYPE_5__* HPDF_Array ;


 int CIDFontType2_BeforeWrite_Func ;
 scalar_t__ HPDF_Array_Add (TYPE_5__*,TYPE_5__*) ;
 scalar_t__ HPDF_Array_AddNumber (TYPE_5__*,int) ;
 TYPE_5__* HPDF_Array_New (int ) ;
 scalar_t__ HPDF_CMapEncoder_ToUnicode ;
 TYPE_5__* HPDF_DictStream_New (int ,int ) ;
 scalar_t__ HPDF_Dict_Add (TYPE_5__*,char*,TYPE_5__*) ;
 scalar_t__ HPDF_Dict_AddName (TYPE_5__*,char*,char*) ;
 scalar_t__ HPDF_Dict_AddNumber (TYPE_5__*,char*,int) ;
 TYPE_5__* HPDF_Dict_New (int ) ;
 int HPDF_INVALID_FONTDEF_DATA ;
 int HPDF_MemCpy (scalar_t__*,scalar_t__*,int) ;
 int HPDF_MemSet (size_t*,int ,int) ;
 scalar_t__ HPDF_OK ;
 int HPDF_PTRACE (char*) ;
 int HPDF_SetError (int ,int ,int ) ;
 scalar_t__ HPDF_Stream_Write (int ,scalar_t__*,scalar_t__) ;
 TYPE_5__* HPDF_String_New (int ,int ,int *) ;
 int HPDF_TTFontDef_GetGidWidth (TYPE_3__*,size_t) ;
 scalar_t__ HPDF_TTFontDef_GetGlyphid (TYPE_3__*,size_t) ;
 scalar_t__ HPDF_Xref_Add (int ,TYPE_5__*) ;

__attribute__((used)) static HPDF_Font
CIDFontType2_New (HPDF_Font parent, HPDF_Xref xref)
{
    HPDF_STATUS ret = HPDF_OK;
    HPDF_FontAttr attr = (HPDF_FontAttr)parent->attr;
    HPDF_FontDef fontdef = attr->fontdef;
    HPDF_TTFontDefAttr fontdef_attr = (HPDF_TTFontDefAttr)fontdef->attr;
    HPDF_Encoder encoder = attr->encoder;
    HPDF_CMapEncoderAttr encoder_attr =
                (HPDF_CMapEncoderAttr)encoder->attr;

    HPDF_Font font;
    HPDF_Array array;
    HPDF_UINT i;
    HPDF_UNICODE tmp_map[65536];
    HPDF_Dict cid_system_info;

    HPDF_UINT16 max = 0;

    HPDF_PTRACE ((" HPDF_CIDFontType2_New\n"));

    font = HPDF_Dict_New (parent->mmgr);
    if (!font)
        return ((void*)0);

    if (HPDF_Xref_Add (xref, font) != HPDF_OK)
        return ((void*)0);

    parent->before_write_fn = CIDFontType2_BeforeWrite_Func;

    ret += HPDF_Dict_AddName (font, "Type", "Font");
    ret += HPDF_Dict_AddName (font, "Subtype", "CIDFontType2");
    ret += HPDF_Dict_AddNumber (font, "DW", fontdef->missing_width);
    if (ret != HPDF_OK)
        return ((void*)0);


    array = HPDF_Array_New (font->mmgr);
    if (!array)
        return ((void*)0);

    if (HPDF_Dict_Add (font, "DW2", array) != HPDF_OK)
        return ((void*)0);

    ret += HPDF_Array_AddNumber (array, (HPDF_INT32)(fontdef->font_bbox.bottom));
    ret += HPDF_Array_AddNumber (array, (HPDF_INT32)(fontdef->font_bbox.bottom -
                fontdef->font_bbox.top));

    HPDF_MemSet (tmp_map, 0, sizeof(HPDF_UNICODE) * 65536);

    if (ret != HPDF_OK)
        return ((void*)0);

    for (i = 0; i < 256; i++) {
        HPDF_UINT j;

        for (j = 0; j < 256; j++) {
     if (encoder->to_unicode_fn == HPDF_CMapEncoder_ToUnicode) {
  HPDF_UINT16 cid = encoder_attr->cid_map[i][j];
  if (cid != 0) {
      HPDF_UNICODE unicode = encoder_attr->unicode_map[i][j];
      HPDF_UINT16 gid = HPDF_TTFontDef_GetGlyphid (fontdef,
         unicode);
      tmp_map[cid] = gid;
      if (max < cid)
   max = cid;
  }
     } else {
  HPDF_UNICODE unicode = (i << 8) | j;
  HPDF_UINT16 gid = HPDF_TTFontDef_GetGlyphid (fontdef,
            unicode);
  tmp_map[unicode] = gid;
  if (max < unicode)
      max = unicode;
     }
 }
    }

    if (max > 0) {
        HPDF_INT16 dw = fontdef->missing_width;
        HPDF_UNICODE *ptmp_map = tmp_map;
        HPDF_Array tmp_array = ((void*)0);


        array = HPDF_Array_New (font->mmgr);
        if (!array)
            return ((void*)0);

        if (HPDF_Dict_Add (font, "W", array) != HPDF_OK)
            return ((void*)0);

        for (i = 0; i < max; i++, ptmp_map++) {
            HPDF_INT w = HPDF_TTFontDef_GetGidWidth (fontdef, *ptmp_map);

            if (w != dw) {
                if (!tmp_array) {
                    if (HPDF_Array_AddNumber (array, i) != HPDF_OK)
                        return ((void*)0);

                    tmp_array = HPDF_Array_New (font->mmgr);
                    if (!tmp_array)
                        return ((void*)0);

                    if (HPDF_Array_Add (array, tmp_array) != HPDF_OK)
                        return ((void*)0);
                }

                if ((ret = HPDF_Array_AddNumber (tmp_array, w)) != HPDF_OK)
                    return ((void*)0);
            } else
                  tmp_array = ((void*)0);
        }


        if (fontdef_attr->embedding) {
            attr->map_stream = HPDF_DictStream_New (font->mmgr, xref);
            if (!attr->map_stream)
                return ((void*)0);

            if (HPDF_Dict_Add (font, "CIDToGIDMap", attr->map_stream) != HPDF_OK)
                return ((void*)0);

            for (i = 0; i < max; i++) {
                HPDF_BYTE u[2];
                HPDF_UINT16 gid = tmp_map[i];

                u[0] = (HPDF_BYTE)(gid >> 8);
                u[1] = (HPDF_BYTE)gid;

                HPDF_MemCpy ((HPDF_BYTE *)(tmp_map + i), u, 2);
            }

            if ((ret = HPDF_Stream_Write (attr->map_stream->stream,
                            (HPDF_BYTE *)tmp_map, max * 2)) != HPDF_OK)
                return ((void*)0);
        }
    } else {
        HPDF_SetError (font->error, HPDF_INVALID_FONTDEF_DATA, 0);
        return 0;
    }


    cid_system_info = HPDF_Dict_New (parent->mmgr);
    if (!cid_system_info)
        return ((void*)0);

    if (HPDF_Dict_Add (font, "CIDSystemInfo", cid_system_info) != HPDF_OK)
        return ((void*)0);

    ret += HPDF_Dict_Add (cid_system_info, "Registry",
            HPDF_String_New (parent->mmgr, encoder_attr->registry, ((void*)0)));
    ret += HPDF_Dict_Add (cid_system_info, "Ordering",
            HPDF_String_New (parent->mmgr, encoder_attr->ordering, ((void*)0)));
    ret += HPDF_Dict_AddNumber (cid_system_info, "Supplement",
            encoder_attr->suppliment);

    if (ret != HPDF_OK)
        return ((void*)0);

    return font;
}
