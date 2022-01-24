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

__attribute__((used)) static bool FUNC1(const char *mime)
{
    /* These are the mime types supported by Lwan without having to perform
     * a bsearch().  application/octet-stream is the fallback. */
    if (FUNC0(mime, "application/octet-stream"))
        return true;
    if (FUNC0(mime, "application/javascript"))
        return true;
    if (FUNC0(mime, "image/jpeg"))
        return true;
    if (FUNC0(mime, "image/png"))
        return true;
    if (FUNC0(mime, "text/html"))
        return true;
    if (FUNC0(mime, "text/css"))
        return true;
    if (FUNC0(mime, "text/plain"))
        return true;
    return false;
}