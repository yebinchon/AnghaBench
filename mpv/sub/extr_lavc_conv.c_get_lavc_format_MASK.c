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
 scalar_t__ FUNC0 (char const*,char*) ; 

__attribute__((used)) static const char *FUNC1(const char *format)
{
    // For the hack involving parse_webvtt().
    if (format && FUNC0(format, "webvtt-webm") == 0)
        format = "webvtt";
    // Most text subtitles are srt/html style anyway.
    if (format && FUNC0(format, "text") == 0)
        format = "subrip";
    return format;
}