#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  children; } ;
typedef  TYPE_1__ obs_hotkey_name_map_node_t ;
struct TYPE_13__ {scalar_t__ prefix_len; TYPE_1__* node; } ;
typedef  TYPE_2__ obs_hotkey_name_map_edge_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char const*,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (TYPE_2__*) ; 
 TYPE_1__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,size_t) ; 

__attribute__((used)) static void FUNC7(obs_hotkey_name_map_edge_t *e, const char *key,
			size_t l, int v)
{
	const char *str = FUNC3(e), *str_ = key;
	size_t common_length = 0;
	while (*str == *str_) {
		common_length += 1;
		str += 1;
		str_ += 1;
	}

	obs_hotkey_name_map_node_t *new_node_ = FUNC4();
	obs_hotkey_name_map_edge_t *tail =
		FUNC2(new_node_->children);

	FUNC1(tail, e->node);
	FUNC5(tail, str, e->prefix_len - common_length);

	FUNC0(new_node_, str_, l - common_length, v);

	FUNC1(e, new_node_);
	FUNC6(e, common_length);
}