#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct debug_buffer {int /*<<< orphan*/  str; } ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  WINED3DUSAGE_DEPTHSTENCIL ; 
 int /*<<< orphan*/  WINED3DUSAGE_DMAP ; 
 int /*<<< orphan*/  WINED3DUSAGE_DONOTCLIP ; 
 int /*<<< orphan*/  WINED3DUSAGE_DYNAMIC ; 
 int /*<<< orphan*/  WINED3DUSAGE_LEGACY_CUBEMAP ; 
 int /*<<< orphan*/  WINED3DUSAGE_NPATCHES ; 
 int /*<<< orphan*/  WINED3DUSAGE_OVERLAY ; 
 int /*<<< orphan*/  WINED3DUSAGE_OWNDC ; 
 int /*<<< orphan*/  WINED3DUSAGE_POINTS ; 
 int /*<<< orphan*/  WINED3DUSAGE_RENDERTARGET ; 
 int /*<<< orphan*/  WINED3DUSAGE_RESTRICTED_CONTENT ; 
 int /*<<< orphan*/  WINED3DUSAGE_RESTRICT_SHARED_RESOURCE ; 
 int /*<<< orphan*/  WINED3DUSAGE_RESTRICT_SHARED_RESOURCE_DRIVER ; 
 int /*<<< orphan*/  WINED3DUSAGE_RTPATCHES ; 
 int /*<<< orphan*/  WINED3DUSAGE_SOFTWAREPROCESSING ; 
 int /*<<< orphan*/  WINED3DUSAGE_STATICDECL ; 
 int /*<<< orphan*/  WINED3DUSAGE_TEXTAPI ; 
 int /*<<< orphan*/  WINED3DUSAGE_TEXTURE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WINED3DUSAGE_WRITEONLY ; 
 int /*<<< orphan*/  FUNC2 (struct debug_buffer*,char*) ; 
 char const* FUNC3 (char*,int /*<<< orphan*/ ) ; 

const char *FUNC4(DWORD usage)
{
    struct debug_buffer buffer;

    FUNC2(&buffer, "0");
#define WINED3DUSAGE_TO_STR(x) if (usage & x) { debug_append(&buffer, #x, " | "); usage &= ~x; }
    WINED3DUSAGE_TO_STR(WINED3DUSAGE_RENDERTARGET);
    WINED3DUSAGE_TO_STR(WINED3DUSAGE_DEPTHSTENCIL);
    WINED3DUSAGE_TO_STR(WINED3DUSAGE_WRITEONLY);
    WINED3DUSAGE_TO_STR(WINED3DUSAGE_SOFTWAREPROCESSING);
    WINED3DUSAGE_TO_STR(WINED3DUSAGE_DONOTCLIP);
    WINED3DUSAGE_TO_STR(WINED3DUSAGE_POINTS);
    WINED3DUSAGE_TO_STR(WINED3DUSAGE_RTPATCHES);
    WINED3DUSAGE_TO_STR(WINED3DUSAGE_NPATCHES);
    WINED3DUSAGE_TO_STR(WINED3DUSAGE_DYNAMIC);
    WINED3DUSAGE_TO_STR(WINED3DUSAGE_RESTRICTED_CONTENT);
    WINED3DUSAGE_TO_STR(WINED3DUSAGE_RESTRICT_SHARED_RESOURCE_DRIVER);
    WINED3DUSAGE_TO_STR(WINED3DUSAGE_RESTRICT_SHARED_RESOURCE);
    WINED3DUSAGE_TO_STR(WINED3DUSAGE_DMAP);
    WINED3DUSAGE_TO_STR(WINED3DUSAGE_TEXTAPI);
    WINED3DUSAGE_TO_STR(WINED3DUSAGE_LEGACY_CUBEMAP);
    WINED3DUSAGE_TO_STR(WINED3DUSAGE_TEXTURE);
    WINED3DUSAGE_TO_STR(WINED3DUSAGE_OWNDC);
    WINED3DUSAGE_TO_STR(WINED3DUSAGE_STATICDECL);
    WINED3DUSAGE_TO_STR(WINED3DUSAGE_OVERLAY);
#undef WINED3DUSAGE_TO_STR
    if (usage)
        FUNC0("Unrecognized usage flag(s) %#x.\n", usage);

    return FUNC3("%s", buffer.str);
}