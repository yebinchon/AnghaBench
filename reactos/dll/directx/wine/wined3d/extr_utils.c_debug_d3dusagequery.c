
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debug_buffer {int str; } ;
typedef scalar_t__ DWORD ;


 int FIXME (char*,scalar_t__) ;
 int WINED3DUSAGEQUERY_TO_STR (int ) ;
 int WINED3DUSAGE_QUERY_FILTER ;
 int WINED3DUSAGE_QUERY_GENMIPMAP ;
 int WINED3DUSAGE_QUERY_LEGACYBUMPMAP ;
 int WINED3DUSAGE_QUERY_POSTPIXELSHADER_BLENDING ;
 int WINED3DUSAGE_QUERY_SRGBREAD ;
 int WINED3DUSAGE_QUERY_SRGBWRITE ;
 int WINED3DUSAGE_QUERY_VERTEXTEXTURE ;
 int WINED3DUSAGE_QUERY_WRAPANDMIP ;
 int init_debug_buffer (struct debug_buffer*,char*) ;
 char const* wine_dbg_sprintf (char*,int ) ;

const char *debug_d3dusagequery(DWORD usage)
{
    struct debug_buffer buffer;

    init_debug_buffer(&buffer, "0");

    if (usage & WINED3DUSAGE_QUERY_FILTER) { debug_append(&buffer, "WINED3DUSAGE_QUERY_FILTER", " | "); usage &= ~WINED3DUSAGE_QUERY_FILTER; };
    if (usage & WINED3DUSAGE_QUERY_GENMIPMAP) { debug_append(&buffer, "WINED3DUSAGE_QUERY_GENMIPMAP", " | "); usage &= ~WINED3DUSAGE_QUERY_GENMIPMAP; };
    if (usage & WINED3DUSAGE_QUERY_LEGACYBUMPMAP) { debug_append(&buffer, "WINED3DUSAGE_QUERY_LEGACYBUMPMAP", " | "); usage &= ~WINED3DUSAGE_QUERY_LEGACYBUMPMAP; };
    if (usage & WINED3DUSAGE_QUERY_POSTPIXELSHADER_BLENDING) { debug_append(&buffer, "WINED3DUSAGE_QUERY_POSTPIXELSHADER_BLENDING", " | "); usage &= ~WINED3DUSAGE_QUERY_POSTPIXELSHADER_BLENDING; };
    if (usage & WINED3DUSAGE_QUERY_SRGBREAD) { debug_append(&buffer, "WINED3DUSAGE_QUERY_SRGBREAD", " | "); usage &= ~WINED3DUSAGE_QUERY_SRGBREAD; };
    if (usage & WINED3DUSAGE_QUERY_SRGBWRITE) { debug_append(&buffer, "WINED3DUSAGE_QUERY_SRGBWRITE", " | "); usage &= ~WINED3DUSAGE_QUERY_SRGBWRITE; };
    if (usage & WINED3DUSAGE_QUERY_VERTEXTEXTURE) { debug_append(&buffer, "WINED3DUSAGE_QUERY_VERTEXTEXTURE", " | "); usage &= ~WINED3DUSAGE_QUERY_VERTEXTEXTURE; };
    if (usage & WINED3DUSAGE_QUERY_WRAPANDMIP) { debug_append(&buffer, "WINED3DUSAGE_QUERY_WRAPANDMIP", " | "); usage &= ~WINED3DUSAGE_QUERY_WRAPANDMIP; };

    if (usage)
        FIXME("Unrecognized usage query flag(s) %#x.\n", usage);

    return wine_dbg_sprintf("%s", buffer.str);
}
