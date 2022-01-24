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
struct mpv_node_list {size_t num; struct mpv_node* values; struct mpv_node* keys; } ;
struct TYPE_2__ {struct mpv_node_list* list; } ;
struct mpv_node {scalar_t__ format; TYPE_1__ u; } ;

/* Variables and functions */
 scalar_t__ MPV_FORMAT_NODE_MAP ; 
 int /*<<< orphan*/  FUNC0 (struct mpv_node_list*,struct mpv_node*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct mpv_node*,int,struct mpv_node*) ; 
 struct mpv_node FUNC3 (struct mpv_node_list*,char const*) ; 

struct mpv_node *FUNC4(struct mpv_node *dst, const char *key, int format)
{
    FUNC1(key);

    struct mpv_node_list *list = dst->u.list;
    FUNC1(dst->format == MPV_FORMAT_NODE_MAP && dst->u.list);
    FUNC0(list, list->values, list->num);
    FUNC0(list, list->keys, list->num);
    list->keys[list->num] = FUNC3(list, key);
    FUNC2(&list->values[list->num], format, dst);
    return &list->values[list->num++];
}