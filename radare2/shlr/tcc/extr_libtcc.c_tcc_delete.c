
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* runtime_mem; int mem_size; struct TYPE_5__* write_mem; struct TYPE_5__* os; struct TYPE_5__* arch; int nb_target_deps; int target_deps; int nb_files; int files; struct TYPE_5__* deps_outfile; struct TYPE_5__* outfile; struct TYPE_5__* fini_symbol; struct TYPE_5__* init_symbol; struct TYPE_5__* rpath; struct TYPE_5__* soname; struct TYPE_5__* tcc_lib_path; int nb_sysinclude_paths; int sysinclude_paths; int nb_include_paths; int include_paths; int nb_cached_includes; int cached_includes; int nb_crt_paths; int crt_paths; int nb_library_paths; int library_paths; } ;
typedef TYPE_1__ TCCState ;


 int dynarray_reset (int *,int *) ;
 int free (TYPE_1__*) ;
 int munmap (TYPE_1__*,int ) ;
 int tcc_cleanup () ;

void tcc_delete(TCCState *s1)
{
 tcc_cleanup ();


 dynarray_reset (&s1->library_paths, &s1->nb_library_paths);
 dynarray_reset (&s1->crt_paths, &s1->nb_crt_paths);


 dynarray_reset (&s1->cached_includes, &s1->nb_cached_includes);
 dynarray_reset (&s1->include_paths, &s1->nb_include_paths);
 dynarray_reset (&s1->sysinclude_paths, &s1->nb_sysinclude_paths);

 free (s1->tcc_lib_path);
 free (s1->soname);
 free (s1->rpath);
 free (s1->init_symbol);
 free (s1->fini_symbol);
 free (s1->outfile);
 free (s1->deps_outfile);
 dynarray_reset (&s1->files, &s1->nb_files);
 dynarray_reset (&s1->target_deps, &s1->nb_target_deps);


 free (s1->arch);
 free (s1->os);
 free (s1);
}
