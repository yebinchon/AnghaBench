#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* runtime_mem; int /*<<< orphan*/  mem_size; struct TYPE_5__* write_mem; struct TYPE_5__* os; struct TYPE_5__* arch; int /*<<< orphan*/  nb_target_deps; int /*<<< orphan*/  target_deps; int /*<<< orphan*/  nb_files; int /*<<< orphan*/  files; struct TYPE_5__* deps_outfile; struct TYPE_5__* outfile; struct TYPE_5__* fini_symbol; struct TYPE_5__* init_symbol; struct TYPE_5__* rpath; struct TYPE_5__* soname; struct TYPE_5__* tcc_lib_path; int /*<<< orphan*/  nb_sysinclude_paths; int /*<<< orphan*/  sysinclude_paths; int /*<<< orphan*/  nb_include_paths; int /*<<< orphan*/  include_paths; int /*<<< orphan*/  nb_cached_includes; int /*<<< orphan*/  cached_includes; int /*<<< orphan*/  nb_crt_paths; int /*<<< orphan*/  crt_paths; int /*<<< orphan*/  nb_library_paths; int /*<<< orphan*/  library_paths; } ;
typedef  TYPE_1__ TCCState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(TCCState *s1)
{
	FUNC3 ();

	/* free library paths */
	FUNC0 (&s1->library_paths, &s1->nb_library_paths);
	FUNC0 (&s1->crt_paths, &s1->nb_crt_paths);

	/* free include paths */
	FUNC0 (&s1->cached_includes, &s1->nb_cached_includes);
	FUNC0 (&s1->include_paths, &s1->nb_include_paths);
	FUNC0 (&s1->sysinclude_paths, &s1->nb_sysinclude_paths);

	FUNC1 (s1->tcc_lib_path);
	FUNC1 (s1->soname);
	FUNC1 (s1->rpath);
	FUNC1 (s1->init_symbol);
	FUNC1 (s1->fini_symbol);
	FUNC1 (s1->outfile);
	FUNC1 (s1->deps_outfile);
	FUNC0 (&s1->files, &s1->nb_files);
	FUNC0 (&s1->target_deps, &s1->nb_target_deps);

	/* target config */
	FUNC1 (s1->arch);
	FUNC1 (s1->os);

#ifdef TCC_IS_NATIVE
#ifdef HAVE_SELINUX
	munmap (s1->write_mem, s1->mem_size);
	munmap (s1->runtime_mem, s1->mem_size);
#else
	free (s1->runtime_mem);
#endif
#endif

	FUNC1 (s1);
}