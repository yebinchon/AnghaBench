
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; int st_mode; } ;
struct serve_files_priv {int root_path_len; int auto_index; int root_fd; scalar_t__ index_html; } ;
struct cache_funcs {int dummy; } ;


 scalar_t__ ENOENT ;
 scalar_t__ LIKELY (int ) ;
 int PATH_MAX ;
 scalar_t__ S_ISDIR (int ) ;
 int S_ISREG (int ) ;
 scalar_t__ UNLIKELY (int) ;
 struct cache_funcs const dirlist_funcs ;
 scalar_t__ errno ;
 scalar_t__ fstatat (int ,char*,struct stat*,int ) ;
 int is_world_readable (int ) ;
 struct cache_funcs const mmap_funcs ;
 char* rawmemchr (char const*,char) ;
 struct cache_funcs const redir_funcs ;
 struct cache_funcs const sendfile_funcs ;
 int snprintf (char*,int,char*,char const*,scalar_t__) ;
 int strlen (char*) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static const struct cache_funcs *get_funcs(struct serve_files_priv *priv,
                                           const char *key,
                                           char *full_path,
                                           struct stat *st)
{
    char index_html_path_buf[PATH_MAX];
    char *index_html_path = index_html_path_buf;

    if (S_ISDIR(st->st_mode)) {



        if (*key == '\0') {
            index_html_path = (char *)priv->index_html;
        } else {



            const char *key_end = rawmemchr(key, '\0');
            if (*(key_end - 1) != '/')
                return &redir_funcs;

            int ret = snprintf(index_html_path, PATH_MAX, "%s%s", key,
                               priv->index_html);
            if (UNLIKELY(ret < 0 || ret >= PATH_MAX))
                return ((void*)0);
        }


        if (fstatat(priv->root_fd, index_html_path, st, 0) < 0) {
            if (UNLIKELY(errno != ENOENT))
                return ((void*)0);

            if (LIKELY(priv->auto_index)) {

                return &dirlist_funcs;
            }


            return ((void*)0);
        }


        if (UNLIKELY(!is_world_readable(st->st_mode)))
            return ((void*)0);




        if (UNLIKELY(priv->root_path_len + 1 +
                         strlen(index_html_path) + 1 >=
                     PATH_MAX))
            return ((void*)0);

        full_path[priv->root_path_len] = '/';
        strncpy(full_path + priv->root_path_len + 1, index_html_path,
                PATH_MAX - priv->root_path_len - 1);
    }


    if (UNLIKELY(!S_ISREG(st->st_mode)))
        return ((void*)0);



    if (st->st_size < 16384)
        return &mmap_funcs;

    return &sendfile_funcs;
}
