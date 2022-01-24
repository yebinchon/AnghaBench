#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  language_id; int /*<<< orphan*/  encoding_id; int /*<<< orphan*/  platform_id; } ;
typedef  TYPE_1__ tt_name_record ;
typedef  size_t LANGID ;

/* Variables and functions */
 size_t FUNC0 (size_t*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LANG_ENGLISH ; 
 size_t FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (size_t) ; 
 int /*<<< orphan*/  SUBLANG_DEFAULT ; 
#define  TT_APPLE_ID_DEFAULT 135 
#define  TT_APPLE_ID_ISO_10646 134 
#define  TT_APPLE_ID_UNICODE_2_0 133 
#define  TT_MS_ID_SYMBOL_CS 132 
#define  TT_MS_ID_UNICODE_CS 131 
#define  TT_PLATFORM_APPLE_UNICODE 130 
#define  TT_PLATFORM_MACINTOSH 129 
#define  TT_PLATFORM_MICROSOFT 128 
 int /*<<< orphan*/  FUNC5 (TYPE_1__ const*) ; 
 size_t* mac_langid_table ; 

__attribute__((used)) static int FUNC6( const tt_name_record *name, LANGID lang )
{
    LANGID name_lang;

    switch (FUNC1(name->platform_id))
    {
    case TT_PLATFORM_MICROSOFT:
        switch (FUNC1(name->encoding_id))
        {
        case TT_MS_ID_UNICODE_CS:
        case TT_MS_ID_SYMBOL_CS:
            name_lang = FUNC1(name->language_id);
            break;
        default:
            return 0;
        }
        break;
    case TT_PLATFORM_MACINTOSH:
        if (!FUNC2( FUNC5( name ))) return 0;
        name_lang = FUNC1(name->language_id);
        if (name_lang >= FUNC0(mac_langid_table)) return 0;
        name_lang = mac_langid_table[name_lang];
        break;
    case TT_PLATFORM_APPLE_UNICODE:
        switch (FUNC1(name->encoding_id))
        {
        case TT_APPLE_ID_DEFAULT:
        case TT_APPLE_ID_ISO_10646:
        case TT_APPLE_ID_UNICODE_2_0:
            name_lang = FUNC1(name->language_id);
            if (name_lang >= FUNC0(mac_langid_table)) return 0;
            name_lang = mac_langid_table[name_lang];
            break;
        default:
            return 0;
        }
        break;
    default:
        return 0;
    }
    if (name_lang == lang) return 3;
    if (FUNC4( name_lang ) == FUNC4( lang )) return 2;
    if (name_lang == FUNC3( LANG_ENGLISH, SUBLANG_DEFAULT )) return 1;
    return 0;
}