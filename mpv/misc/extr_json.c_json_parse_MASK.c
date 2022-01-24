#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int flag; long long int64; double double_; } ;
struct mpv_node {TYPE_1__ u; void* format; } ;

/* Variables and functions */
 void* MPV_FORMAT_DOUBLE ; 
 void* MPV_FORMAT_FLAG ; 
 void* MPV_FORMAT_INT64 ; 
 void* MPV_FORMAT_NONE ; 
 int /*<<< orphan*/  FUNC0 (char**) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (double) ; 
 int FUNC2 (void*,struct mpv_node*,char**) ; 
 int FUNC3 (void*,struct mpv_node*,char**,int) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 
 double FUNC5 (char*,char**) ; 
 long long FUNC6 (char*,char**,int /*<<< orphan*/ ) ; 

int FUNC7(void *ta_parent, struct mpv_node *dst, char **src, int max_depth)
{
    max_depth -= 1;
    if (max_depth < 0)
        return -1;

    FUNC0(src);

    char c = **src;
    if (!c)
        return -1; // early EOF
    if (c == 'n' && FUNC4(*src, "null", 4) == 0) {
        *src += 4;
        dst->format = MPV_FORMAT_NONE;
        return 0;
    } else if (c == 't' && FUNC4(*src, "true", 4) == 0) {
        *src += 4;
        dst->format = MPV_FORMAT_FLAG;
        dst->u.flag = 1;
        return 0;
    } else if (c == 'f' && FUNC4(*src, "false", 5) == 0) {
        *src += 5;
        dst->format = MPV_FORMAT_FLAG;
        dst->u.flag = 0;
        return 0;
    } else if (c == '"') {
        return FUNC2(ta_parent, dst, src);
    } else if (c == '[' || c == '{') {
        return FUNC3(ta_parent, dst, src, max_depth);
    } else if (c == '-' || (c >= '0' && c <= '9')) {
        // The number could be either a float or an int. JSON doesn't make a
        // difference, but the client API does.
        char *nsrci = *src, *nsrcf = *src;
        errno = 0;
        long long int numi = FUNC6(*src, &nsrci, 0);
        if (errno)
            nsrci = *src;
        errno = 0;
        double numf = FUNC5(*src, &nsrcf);
        if (errno)
            nsrcf = *src;
        if (nsrci >= nsrcf) {
            *src = nsrci;
            dst->format = MPV_FORMAT_INT64; // long long is usually 64 bits
            dst->u.int64 = numi;
            return 0;
        }
        if (nsrcf > *src && FUNC1(numf)) {
            *src = nsrcf;
            dst->format = MPV_FORMAT_DOUBLE;
            dst->u.double_ = numf;
            return 0;
        }
        return -1;
    }
    return -1; // character doesn't start a valid token
}