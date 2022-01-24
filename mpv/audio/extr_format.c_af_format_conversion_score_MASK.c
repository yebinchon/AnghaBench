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
 int AF_FORMAT_UNKNOWN ; 
 int INT_MIN ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int) ; 

int FUNC4(int dst_format, int src_format)
{
    if (dst_format == AF_FORMAT_UNKNOWN || src_format == AF_FORMAT_UNKNOWN)
        return INT_MIN;
    if (dst_format == src_format)
        return 1024;
    // Can't be normally converted
    if (!FUNC1(dst_format) || !FUNC1(src_format))
        return INT_MIN;
    int score = 1024;
    if (FUNC2(dst_format) != FUNC2(src_format))
        score -= 1;     // has to (de-)planarize
    if (FUNC0(dst_format) != FUNC0(src_format)) {
        int dst_bytes = FUNC3(dst_format);
        if (FUNC0(dst_format)) {
            // For int->float, consider a lower bound on the precision difference.
            int bytes = (dst_bytes == 4 ? 3 : 6) - FUNC3(src_format);
            if (bytes >= 0) {
                score -= 8 * bytes;          // excess precision
            } else {
                score += 1024 * (bytes - 1); // precision is lost (i.e. s32 -> float)
            }
        } else {
            // float->int is the worst case. Penalize heavily and
            // prefer highest bit depth int.
            score -= 1048576 * (8 - dst_bytes);
        }
        score -= 512; // penalty for any float <-> int conversion
    } else {
        int bytes = FUNC3(dst_format) - FUNC3(src_format);
        if (bytes > 0) {
            score -= 8 * bytes;          // has to add padding
        } else if (bytes < 0) {
            score += 1024 * (bytes - 1); // has to reduce bit depth
        }
    }
    return score;
}