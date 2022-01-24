#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int ifndef_macro; int /*<<< orphan*/  hash_next; int /*<<< orphan*/  filename; } ;
struct TYPE_7__ {int /*<<< orphan*/  nb_cached_includes; int /*<<< orphan*/ * cached_includes_hash; int /*<<< orphan*/  cached_includes; } ;
typedef  TYPE_1__ TCCState ;
typedef  TYPE_2__ CachedInclude ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void***,int /*<<< orphan*/ *,TYPE_2__*) ; 
 char* FUNC1 (int,int /*<<< orphan*/ *) ; 
 int FUNC2 (char const*) ; 
 TYPE_2__* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,char*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC7 (char const*) ; 

__attribute__((used)) static inline void FUNC8(TCCState *s1, const char *filename, int ifndef_macro)
{
	CachedInclude *e;
	int h;

	if (FUNC5 (s1, filename)) {
		return;
	}
#ifdef INC_DEBUG
	printf ("adding cached '%s' %s\n", filename, get_tok_str (ifndef_macro, NULL));
#endif
	e = FUNC3 (sizeof(CachedInclude) + FUNC7 (filename));
	FUNC6 (e->filename, filename);
	e->ifndef_macro = ifndef_macro;
	FUNC0 ((void ***) &s1->cached_includes, &s1->nb_cached_includes, e);
	/* add in hash table */
	h = FUNC2 (filename);
	e->hash_next = s1->cached_includes_hash[h];
	s1->cached_includes_hash[h] = s1->nb_cached_includes;
}