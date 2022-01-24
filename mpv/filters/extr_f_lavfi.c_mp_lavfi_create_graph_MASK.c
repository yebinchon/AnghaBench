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
struct mp_lavfi {int dummy; } ;
struct mp_filter {int dummy; } ;
struct lavfi {int force_type; int force_bidir; int /*<<< orphan*/  graph_string; int /*<<< orphan*/  graph_opts; } ;
typedef  enum mp_frame_type { ____Placeholder_mp_frame_type } mp_frame_type ;

/* Variables and functions */
 struct mp_lavfi* FUNC0 (struct lavfi*) ; 
 struct lavfi* FUNC1 (struct mp_filter*) ; 
 int /*<<< orphan*/  FUNC2 (struct lavfi*,char**) ; 
 int /*<<< orphan*/  FUNC3 (struct lavfi*,char const*) ; 

struct mp_lavfi *FUNC4(struct mp_filter *parent,
                                       enum mp_frame_type type, bool bidir,
                                       char **graph_opts, const char *graph)
{
    struct lavfi *c = FUNC1(parent);
    if (!c)
        return NULL;

    c->force_type = type;
    c->force_bidir = bidir;
    c->graph_opts = FUNC2(c, graph_opts);
    c->graph_string = FUNC3(c, graph);

    return FUNC0(c);
}