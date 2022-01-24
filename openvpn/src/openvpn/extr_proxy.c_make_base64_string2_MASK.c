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
typedef  int /*<<< orphan*/  uint8_t ;
struct gc_arena {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (void const*,int,char**) ; 
 scalar_t__ FUNC3 (char*,struct gc_arena*) ; 

uint8_t *
FUNC4(const uint8_t *str, int src_len, struct gc_arena *gc)
{
    uint8_t *ret = NULL;
    char *b64out = NULL;
    FUNC0(FUNC2((const void *)str, src_len, &b64out) >= 0);
    ret = (uint8_t *) FUNC3(b64out, gc);
    FUNC1(b64out);
    return ret;
}