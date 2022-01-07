
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int st_mtime; int st_mode; } ;
struct serve_files_priv {int root_path_len; int root_path; int root_fd; } ;
struct TYPE_2__ {int integer; int string; } ;
struct file_cache_entry {TYPE_1__ last_modified; } ;
struct cache_funcs {int dummy; } ;
struct cache_entry {int dummy; } ;


 int PATH_MAX ;
 scalar_t__ UNLIKELY (int) ;
 struct file_cache_entry* create_cache_entry_from_funcs (struct serve_files_priv*,char*,struct stat*,struct cache_funcs const*) ;
 int destroy_cache_entry (struct cache_entry*,int *) ;
 struct cache_funcs* get_funcs (struct serve_files_priv*,char const*,char*,struct stat*) ;
 int is_world_readable (int ) ;
 scalar_t__ lwan_format_rfc_time (int ,int ) ;
 int realpathat2 (int ,int ,char const*,char*,struct stat*) ;
 int strncmp (char*,int ,int ) ;

__attribute__((used)) static struct cache_entry *create_cache_entry(const char *key, void *context)
{
    struct serve_files_priv *priv = context;
    struct file_cache_entry *fce;
    struct stat st;
    const struct cache_funcs *funcs;
    char full_path[PATH_MAX];

    if (UNLIKELY(
            !realpathat2(priv->root_fd, priv->root_path, key, full_path, &st)))
        return ((void*)0);

    if (UNLIKELY(!is_world_readable(st.st_mode)))
        return ((void*)0);

    if (UNLIKELY(strncmp(full_path, priv->root_path, priv->root_path_len)))
        return ((void*)0);

    funcs = get_funcs(priv, key, full_path, &st);
    if (UNLIKELY(!funcs))
        return ((void*)0);

    fce = create_cache_entry_from_funcs(priv, full_path, &st, funcs);
    if (UNLIKELY(!fce))
        return ((void*)0);

    if (UNLIKELY(lwan_format_rfc_time(st.st_mtime, fce->last_modified.string) <
                 0)) {
        destroy_cache_entry((struct cache_entry *)fce, ((void*)0));
        return ((void*)0);
    }
    fce->last_modified.integer = st.st_mtime;

    return (struct cache_entry *)fce;
}
