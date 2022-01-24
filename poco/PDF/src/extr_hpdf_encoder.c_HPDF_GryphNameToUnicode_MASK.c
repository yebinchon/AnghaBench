#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int unicode; int /*<<< orphan*/  gryph_name; } ;
typedef  TYPE_1__ HPDF_UnicodeGryphPair ;
typedef  int HPDF_UNICODE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 TYPE_1__* HPDF_UNICODE_GRYPH_NAME_MAP ; 

HPDF_UNICODE
FUNC2  (const char  *gryph_name)
{
    const HPDF_UnicodeGryphPair* map = HPDF_UNICODE_GRYPH_NAME_MAP;

    FUNC0 ((" HPDF_GryphNameToUnicode\n"));

    while (map->unicode != 0xFFFF) {
        if (FUNC1 (gryph_name, map->gryph_name) == 0)
            return map->unicode;
        map++;
    }

    return 0x0000;
}