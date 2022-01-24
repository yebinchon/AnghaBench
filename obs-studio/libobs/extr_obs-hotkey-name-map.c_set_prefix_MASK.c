#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct TYPE_3__ {scalar_t__ prefix_len; int /*<<< orphan*/  prefix; int /*<<< orphan*/  compressed_prefix; scalar_t__ compressed_len; } ;
typedef  TYPE_1__ obs_hotkey_name_map_edge_t ;

/* Variables and functions */
 size_t NAME_MAP_COMPRESS_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,size_t) ; 

__attribute__((used)) static void FUNC3(obs_hotkey_name_map_edge_t *e, const char *prefix,
		       size_t l)
{
	FUNC0(e->prefix_len == 0);

	e->compressed_len = (uint8_t)l;
	if (l < NAME_MAP_COMPRESS_LENGTH)
		FUNC2(e->compressed_prefix, prefix, l);
	else
		e->prefix = FUNC1(prefix, l);
}