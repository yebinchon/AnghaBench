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
struct TYPE_4__ {int /*<<< orphan*/  platform_id; int /*<<< orphan*/  length; } ;
typedef  TYPE_1__ tt_name_record ;
typedef  int WORD ;
typedef  int WCHAR ;
typedef  int BYTE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,char*,int,int*,int) ; 
#define  TT_PLATFORM_APPLE_UNICODE 130 
#define  TT_PLATFORM_MACINTOSH 129 
#define  TT_PLATFORM_MICROSOFT 128 
 int FUNC2 (TYPE_1__ const*) ; 
 int* FUNC3 (int) ; 

__attribute__((used)) static WCHAR *FUNC4( const tt_name_record *name, const BYTE *data )
{
    WORD name_len = FUNC0(name->length);
    WORD codepage;
    WCHAR *ret;
    int len;

    switch (FUNC0(name->platform_id))
    {
    case TT_PLATFORM_APPLE_UNICODE:
    case TT_PLATFORM_MICROSOFT:
        ret = FUNC3((name_len / 2 + 1) * sizeof(WCHAR));
        for (len = 0; len < name_len / 2; len++)
            ret[len] = (data[len * 2] << 8) | data[len * 2 + 1];
        ret[len] = 0;
        return ret;
    case TT_PLATFORM_MACINTOSH:
        codepage = FUNC2( name );
        len = FUNC1( codepage, 0, (char *)data, name_len, NULL, 0 ) + 1;
        if (!len)
            return NULL;
        ret = FUNC3(len * sizeof(WCHAR));
        len = FUNC1( codepage, 0, (char *)data, name_len, ret, len - 1 );
        ret[len] = 0;
        return ret;
    }
    return NULL;
}