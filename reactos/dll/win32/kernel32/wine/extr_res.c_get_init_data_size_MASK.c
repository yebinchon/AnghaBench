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
struct TYPE_3__ {int Characteristics; scalar_t__ SizeOfRawData; } ;
typedef  TYPE_1__ IMAGE_SECTION_HEADER ;
typedef  size_t DWORD ;

/* Variables and functions */
 int IMAGE_SCN_CNT_INITIALIZED_DATA ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 TYPE_1__* FUNC1 (void*,size_t,size_t*) ; 

__attribute__((used)) static DWORD FUNC2( void *base, DWORD mapping_size )
{
    DWORD i, sz = 0, num_sections = 0;
    IMAGE_SECTION_HEADER *s;

    s = FUNC1( base, mapping_size, &num_sections );

    for (i=0; i<num_sections; i++)
        if (s[i].Characteristics & IMAGE_SCN_CNT_INITIALIZED_DATA)
            sz += s[i].SizeOfRawData;

    FUNC0("size = %08x\n", sz);

    return sz;
}