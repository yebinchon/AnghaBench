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
struct tc_device {char* id; struct tc_class* last_class; struct tc_class* classes; } ;
struct tc_class {char isqdisc; void* id; void* leafid; void* leaf_hash; void* parentid; void* parent_hash; void* hash; struct tc_class* prev; struct tc_class* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_TC_LOOP ; 
 struct tc_class* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,void*,char*) ; 
 scalar_t__ FUNC3 (struct tc_class*) ; 
 void* FUNC4 (void*) ; 
 void* FUNC5 (char*) ; 
 struct tc_class* FUNC6 (struct tc_device*,struct tc_class*) ; 
 struct tc_class* FUNC7 (struct tc_device*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static inline struct tc_class *FUNC9(struct tc_device *n, char *id, char qdisc, char *parentid, char *leafid)
{
    struct tc_class *c = FUNC7(n, id, 0);

    if(!c) {
        FUNC1(D_TC_LOOP, "TC: Creating in device '%s', class id '%s', parentid '%s', leafid '%s'", n->id, id, parentid?parentid:"", leafid?leafid:"");

        c = FUNC0(1, sizeof(struct tc_class));

        if(FUNC8(!n->classes))
            n->classes = c;

        else if(FUNC3(n->last_class)) {
            n->last_class->next = c;
            c->prev = n->last_class;
        }

        n->last_class = c;

        c->id = FUNC5(id);
        c->hash = FUNC4(c->id);

        c->isqdisc = qdisc;
        if(parentid && *parentid) {
            c->parentid = FUNC5(parentid);
            c->parent_hash = FUNC4(c->parentid);
        }

        if(leafid && *leafid) {
            c->leafid = FUNC5(leafid);
            c->leaf_hash = FUNC4(c->leafid);
        }

        if(FUNC8(FUNC6(n, c) != c))
            FUNC2("plugin_tc: INTERNAL ERROR: attempt index class '%s' on device '%s': already exists", c->id, n->id);
    }
    return(c);
}