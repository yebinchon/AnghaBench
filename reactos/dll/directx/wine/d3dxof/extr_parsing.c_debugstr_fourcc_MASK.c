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
typedef  int DWORD ;

/* Variables and functions */
 char const* FUNC0 (char*,char,char,char,char) ; 

__attribute__((used)) static const char *FUNC1(DWORD fourcc)
{
    if (!fourcc) return "'null'";
    return FUNC0 ("\'%c%c%c%c\'",
        (char)(fourcc), (char)(fourcc >> 8),
        (char)(fourcc >> 16), (char)(fourcc >> 24));
}