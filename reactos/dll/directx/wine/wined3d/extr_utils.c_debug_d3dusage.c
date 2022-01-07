
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debug_buffer {int str; } ;
typedef scalar_t__ DWORD ;


 int FIXME (char*,scalar_t__) ;
 int WINED3DUSAGE_DEPTHSTENCIL ;
 int WINED3DUSAGE_DMAP ;
 int WINED3DUSAGE_DONOTCLIP ;
 int WINED3DUSAGE_DYNAMIC ;
 int WINED3DUSAGE_LEGACY_CUBEMAP ;
 int WINED3DUSAGE_NPATCHES ;
 int WINED3DUSAGE_OVERLAY ;
 int WINED3DUSAGE_OWNDC ;
 int WINED3DUSAGE_POINTS ;
 int WINED3DUSAGE_RENDERTARGET ;
 int WINED3DUSAGE_RESTRICTED_CONTENT ;
 int WINED3DUSAGE_RESTRICT_SHARED_RESOURCE ;
 int WINED3DUSAGE_RESTRICT_SHARED_RESOURCE_DRIVER ;
 int WINED3DUSAGE_RTPATCHES ;
 int WINED3DUSAGE_SOFTWAREPROCESSING ;
 int WINED3DUSAGE_STATICDECL ;
 int WINED3DUSAGE_TEXTAPI ;
 int WINED3DUSAGE_TEXTURE ;
 int WINED3DUSAGE_TO_STR (int ) ;
 int WINED3DUSAGE_WRITEONLY ;
 int init_debug_buffer (struct debug_buffer*,char*) ;
 char const* wine_dbg_sprintf (char*,int ) ;

const char *debug_d3dusage(DWORD usage)
{
    struct debug_buffer buffer;

    init_debug_buffer(&buffer, "0");

    if (usage & WINED3DUSAGE_RENDERTARGET) { debug_append(&buffer, "WINED3DUSAGE_RENDERTARGET", " | "); usage &= ~WINED3DUSAGE_RENDERTARGET; };
    if (usage & WINED3DUSAGE_DEPTHSTENCIL) { debug_append(&buffer, "WINED3DUSAGE_DEPTHSTENCIL", " | "); usage &= ~WINED3DUSAGE_DEPTHSTENCIL; };
    if (usage & WINED3DUSAGE_WRITEONLY) { debug_append(&buffer, "WINED3DUSAGE_WRITEONLY", " | "); usage &= ~WINED3DUSAGE_WRITEONLY; };
    if (usage & WINED3DUSAGE_SOFTWAREPROCESSING) { debug_append(&buffer, "WINED3DUSAGE_SOFTWAREPROCESSING", " | "); usage &= ~WINED3DUSAGE_SOFTWAREPROCESSING; };
    if (usage & WINED3DUSAGE_DONOTCLIP) { debug_append(&buffer, "WINED3DUSAGE_DONOTCLIP", " | "); usage &= ~WINED3DUSAGE_DONOTCLIP; };
    if (usage & WINED3DUSAGE_POINTS) { debug_append(&buffer, "WINED3DUSAGE_POINTS", " | "); usage &= ~WINED3DUSAGE_POINTS; };
    if (usage & WINED3DUSAGE_RTPATCHES) { debug_append(&buffer, "WINED3DUSAGE_RTPATCHES", " | "); usage &= ~WINED3DUSAGE_RTPATCHES; };
    if (usage & WINED3DUSAGE_NPATCHES) { debug_append(&buffer, "WINED3DUSAGE_NPATCHES", " | "); usage &= ~WINED3DUSAGE_NPATCHES; };
    if (usage & WINED3DUSAGE_DYNAMIC) { debug_append(&buffer, "WINED3DUSAGE_DYNAMIC", " | "); usage &= ~WINED3DUSAGE_DYNAMIC; };
    if (usage & WINED3DUSAGE_RESTRICTED_CONTENT) { debug_append(&buffer, "WINED3DUSAGE_RESTRICTED_CONTENT", " | "); usage &= ~WINED3DUSAGE_RESTRICTED_CONTENT; };
    if (usage & WINED3DUSAGE_RESTRICT_SHARED_RESOURCE_DRIVER) { debug_append(&buffer, "WINED3DUSAGE_RESTRICT_SHARED_RESOURCE_DRIVER", " | "); usage &= ~WINED3DUSAGE_RESTRICT_SHARED_RESOURCE_DRIVER; };
    if (usage & WINED3DUSAGE_RESTRICT_SHARED_RESOURCE) { debug_append(&buffer, "WINED3DUSAGE_RESTRICT_SHARED_RESOURCE", " | "); usage &= ~WINED3DUSAGE_RESTRICT_SHARED_RESOURCE; };
    if (usage & WINED3DUSAGE_DMAP) { debug_append(&buffer, "WINED3DUSAGE_DMAP", " | "); usage &= ~WINED3DUSAGE_DMAP; };
    if (usage & WINED3DUSAGE_TEXTAPI) { debug_append(&buffer, "WINED3DUSAGE_TEXTAPI", " | "); usage &= ~WINED3DUSAGE_TEXTAPI; };
    if (usage & WINED3DUSAGE_LEGACY_CUBEMAP) { debug_append(&buffer, "WINED3DUSAGE_LEGACY_CUBEMAP", " | "); usage &= ~WINED3DUSAGE_LEGACY_CUBEMAP; };
    if (usage & WINED3DUSAGE_TEXTURE) { debug_append(&buffer, "WINED3DUSAGE_TEXTURE", " | "); usage &= ~WINED3DUSAGE_TEXTURE; };
    if (usage & WINED3DUSAGE_OWNDC) { debug_append(&buffer, "WINED3DUSAGE_OWNDC", " | "); usage &= ~WINED3DUSAGE_OWNDC; };
    if (usage & WINED3DUSAGE_STATICDECL) { debug_append(&buffer, "WINED3DUSAGE_STATICDECL", " | "); usage &= ~WINED3DUSAGE_STATICDECL; };
    if (usage & WINED3DUSAGE_OVERLAY) { debug_append(&buffer, "WINED3DUSAGE_OVERLAY", " | "); usage &= ~WINED3DUSAGE_OVERLAY; };

    if (usage)
        FIXME("Unrecognized usage flag(s) %#x.\n", usage);

    return wine_dbg_sprintf("%s", buffer.str);
}
