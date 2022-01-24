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
struct TYPE_4__ {scalar_t__ encoding_name; } ;
typedef  size_t HPDF_UINT ;
typedef  TYPE_1__ HPDF_BuiltinEncodingData ;

/* Variables and functions */
 TYPE_1__ const* HPDF_BUILTIN_ENCODINGS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (scalar_t__,char const*) ; 

const HPDF_BuiltinEncodingData*
FUNC2  (const char  *encoding_name)
{
    HPDF_UINT i = 0;

    FUNC0((" HPDF_BasicEncoder_FindBuiltinData\n"));

    while (HPDF_BUILTIN_ENCODINGS[i].encoding_name) {
        if (FUNC1 (HPDF_BUILTIN_ENCODINGS[i].encoding_name,
                encoding_name) == 0)
            break;

        i++;
    }

    return &HPDF_BUILTIN_ENCODINGS[i];
}