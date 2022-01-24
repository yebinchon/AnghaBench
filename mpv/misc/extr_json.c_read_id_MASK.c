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
struct TYPE_2__ {char* string; } ;
struct mpv_node {TYPE_1__ u; int /*<<< orphan*/  format; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPV_FORMAT_STRING ; 
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 char* FUNC2 (void*,char*,int) ; 

__attribute__((used)) static int FUNC3(void *ta_parent, struct mpv_node *dst, char **src)
{
    char *start = *src;
    if (!FUNC1(**src) && **src != '_')
        return -1;
    while (FUNC0(**src) || **src == '_')
        *src += 1;
    if (**src == ' ') {
        **src = '\0'; // we're allowed to mutate it => can avoid the strndup
        *src += 1;
    } else {
        start = FUNC2(ta_parent, start, *src - start);
    }
    dst->format = MPV_FORMAT_STRING;
    dst->u.string = start;
    return 0;
}