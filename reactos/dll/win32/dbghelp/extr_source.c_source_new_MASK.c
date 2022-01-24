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
struct source_rb {unsigned int source; int /*<<< orphan*/  entry; } ;
struct module {char* sources; int sources_used; int sources_alloc; int /*<<< orphan*/  sources_offsets_tree; int /*<<< orphan*/  pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 unsigned int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 
 struct source_rb* FUNC6 (int /*<<< orphan*/ *,int) ; 
 struct module* rb_module ; 
 unsigned int FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 
 int FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 

unsigned FUNC11(struct module* module, const char* base, const char* name)
{
    unsigned    ret = -1;
    const char* full;
    char*       tmp = NULL;

    if (!name) return ret;
    if (!base || *name == '/')
        full = name;
    else
    {
        unsigned bsz = FUNC9(base);

        tmp = FUNC1(FUNC0(), 0, bsz + 1 + FUNC9(name) + 1);
        if (!tmp) return ret;
        full = tmp;
        FUNC8(tmp, base);
        if (tmp[bsz - 1] != '/') tmp[bsz++] = '/';
        FUNC8(&tmp[bsz], name);
    }
    rb_module = module;
    if (!module->sources || (ret = FUNC7(full)) == (unsigned)-1)
    {
        char* new;
        int len = FUNC9(full) + 1;
        struct source_rb* rb;

        if (module->sources_used + len + 1 > module->sources_alloc)
        {
            if (!module->sources)
            {
                module->sources_alloc = (module->sources_used + len + 1 + 255) & ~255;
                new = FUNC1(FUNC0(), 0, module->sources_alloc);
            }
            else
            {
                module->sources_alloc = FUNC4( module->sources_alloc * 2,
                                             (module->sources_used + len + 1 + 255) & ~255 );
                new = FUNC3(FUNC0(), 0, module->sources,
                                  module->sources_alloc);
            }
            if (!new) goto done;
            module->sources = new;
        }
        ret = module->sources_used;
        FUNC5(module->sources + module->sources_used, full, len);
        module->sources_used += len;
        module->sources[module->sources_used] = '\0';
        if ((rb = FUNC6(&module->pool, sizeof(*rb))))
        {
            rb->source = ret;
            FUNC10(&module->sources_offsets_tree, full, &rb->entry);
        }
    }
done:
    FUNC2(FUNC0(), 0, tmp);
    return ret;
}