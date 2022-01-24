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
struct mpv_node {int dummy; } ;
struct m_config {TYPE_1__* profiles; } ;
struct TYPE_2__ {int num_opts; int /*<<< orphan*/ * opts; int /*<<< orphan*/  desc; int /*<<< orphan*/  name; struct TYPE_2__* next; } ;
typedef  TYPE_1__ m_profile_t ;

/* Variables and functions */
 int /*<<< orphan*/  MPV_FORMAT_NODE_ARRAY ; 
 int /*<<< orphan*/  MPV_FORMAT_NODE_MAP ; 
 struct mpv_node* FUNC0 (struct mpv_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mpv_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mpv_node* FUNC2 (struct mpv_node*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mpv_node*,char*,int /*<<< orphan*/ ) ; 

struct mpv_node FUNC4(struct m_config *config)
{
    struct mpv_node root;
    FUNC1(&root, MPV_FORMAT_NODE_ARRAY, NULL);

    for (m_profile_t *profile = config->profiles; profile; profile = profile->next)
    {
        struct mpv_node *entry = FUNC0(&root, MPV_FORMAT_NODE_MAP);

        FUNC3(entry, "name", profile->name);
        if (profile->desc)
            FUNC3(entry, "profile-desc", profile->desc);

        struct mpv_node *opts =
            FUNC2(entry, "options", MPV_FORMAT_NODE_ARRAY);

        for (int n = 0; n < profile->num_opts; n++) {
            struct mpv_node *opt_entry = FUNC0(opts, MPV_FORMAT_NODE_MAP);
            FUNC3(opt_entry, "key", profile->opts[n * 2 + 0]);
            FUNC3(opt_entry, "value", profile->opts[n * 2 + 1]);
        }
    }

    return root;
}