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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WINED3DUSAGE_QUERY_FILTER ; 
 int /*<<< orphan*/  WINED3DUSAGE_QUERY_GENMIPMAP ; 
 int /*<<< orphan*/  WINED3DUSAGE_QUERY_LEGACYBUMPMAP ; 
 int /*<<< orphan*/  WINED3DUSAGE_QUERY_POSTPIXELSHADER_BLENDING ; 
 int /*<<< orphan*/  WINED3DUSAGE_QUERY_SRGBREAD ; 
 int /*<<< orphan*/  WINED3DUSAGE_QUERY_SRGBWRITE ; 
 int /*<<< orphan*/  WINED3DUSAGE_QUERY_VERTEXTEXTURE ; 
 int /*<<< orphan*/  WINED3DUSAGE_QUERY_WRAPANDMIP ; 
 int /*<<< orphan*/  FUNC2 (struct debug_buffer*,char*) ; 
 char const* FUNC3 (char*,int /*<<< orphan*/ ) ; 

const char *FUNC4(DWORD usage)
{
    struct debug_buffer buffer;

    FUNC2(&buffer, "0");
#define WINED3DUSAGEQUERY_TO_STR(x) if (usage & x) { debug_append(&buffer, #x, " | "); usage &= ~x; }
    WINED3DUSAGEQUERY_TO_STR(WINED3DUSAGE_QUERY_FILTER);
    WINED3DUSAGEQUERY_TO_STR(WINED3DUSAGE_QUERY_GENMIPMAP);
    WINED3DUSAGEQUERY_TO_STR(WINED3DUSAGE_QUERY_LEGACYBUMPMAP);
    WINED3DUSAGEQUERY_TO_STR(WINED3DUSAGE_QUERY_POSTPIXELSHADER_BLENDING);
    WINED3DUSAGEQUERY_TO_STR(WINED3DUSAGE_QUERY_SRGBREAD);
    WINED3DUSAGEQUERY_TO_STR(WINED3DUSAGE_QUERY_SRGBWRITE);
    WINED3DUSAGEQUERY_TO_STR(WINED3DUSAGE_QUERY_VERTEXTEXTURE);
    WINED3DUSAGEQUERY_TO_STR(WINED3DUSAGE_QUERY_WRAPANDMIP);
#undef WINED3DUSAGEQUERY_TO_STR
    if (usage)
        FUNC0("Unrecognized usage query flag(s) %#x.\n", usage);

    return FUNC3("%s", buffer.str);
}