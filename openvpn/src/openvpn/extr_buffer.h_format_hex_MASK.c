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
 char* FUNC0 (int /*<<< orphan*/  const*,int,int,int,char*,struct gc_arena*) ; 

__attribute__((used)) static inline char *
FUNC1(const uint8_t *data, int size, int maxoutput, struct gc_arena *gc)
{
    return FUNC0(data, size, maxoutput, 4, " ", gc);
}