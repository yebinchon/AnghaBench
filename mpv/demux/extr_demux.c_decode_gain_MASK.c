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
struct mp_tags {int dummy; } ;
struct mp_log {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSGL_ERR ; 
 scalar_t__ FUNC0 (char*,float*) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_log*,int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (struct mp_tags*,char const*) ; 

__attribute__((used)) static int FUNC3(struct mp_log *log, struct mp_tags *tags,
                       const char *tag, float *out)
{
    char *tag_val = NULL;
    float dec_val;

    tag_val = FUNC2(tags, tag);
    if (!tag_val)
        return -1;

    if (FUNC0(tag_val, &dec_val) < 0) {
        FUNC1(log, MSGL_ERR, "Invalid replaygain value\n");
        return -1;
    }

    *out = dec_val;
    return 0;
}