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

/* Variables and functions */
 char const* const LZ4_VERSION_STRING ; 
 size_t FUNC0 (char const* const) ; 
 scalar_t__ FUNC1 (char const* const,char const* const,size_t const) ; 

__attribute__((used)) static int FUNC2(const char* const tag)
{
    size_t const tagLength = FUNC0(tag);
    size_t const verLength = FUNC0(LZ4_VERSION_STRING);

    if (tagLength < 2) return 0;
    if (tag[0] != 'v') return 0;
    if (tagLength <= verLength) return 0;

    if (FUNC1(LZ4_VERSION_STRING, tag+1, verLength)) return 0;

    return 1;
}