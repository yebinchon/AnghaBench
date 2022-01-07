
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct serve_files_priv {int dummy; } ;
struct file_cache_entry {struct cache_funcs const* funcs; } ;
struct cache_funcs {int (* init ) (struct file_cache_entry*,struct serve_files_priv*,char const*,struct stat*) ;} ;


 scalar_t__ LIKELY (int ) ;
 scalar_t__ UNLIKELY (int) ;
 int free (struct file_cache_entry*) ;
 struct file_cache_entry* malloc (int) ;
 struct cache_funcs const mmap_funcs ;
 struct cache_funcs sendfile_funcs ;
 int stub1 (struct file_cache_entry*,struct serve_files_priv*,char const*,struct stat*) ;

__attribute__((used)) static struct file_cache_entry *
create_cache_entry_from_funcs(struct serve_files_priv *priv,
                              const char *full_path,
                              struct stat *st,
                              const struct cache_funcs *funcs)
{
    struct file_cache_entry *fce;

    fce = malloc(sizeof(*fce));
    if (UNLIKELY(!fce))
        return ((void*)0);

    if (LIKELY(funcs->init(fce, priv, full_path, st))) {
        fce->funcs = funcs;
        return fce;
    }

    free(fce);

    if (funcs != &mmap_funcs)
        return ((void*)0);

    return create_cache_entry_from_funcs(priv, full_path, st, &sendfile_funcs);
}
