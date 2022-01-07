
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct serve_files_priv {int root_path_len; } ;
struct redir_cache_data {int redir_to; } ;
struct file_cache_entry {char* mime_type; struct redir_cache_data redir_cache_data; } ;


 scalar_t__ asprintf (int *,char*,char const*) ;

__attribute__((used)) static bool redir_init(struct file_cache_entry *ce,
                       struct serve_files_priv *priv,
                       const char *full_path,
                       struct stat *st __attribute__((unused)))
{
    struct redir_cache_data *rd = &ce->redir_cache_data;

    if (asprintf(&rd->redir_to, "%s/", full_path + priv->root_path_len) < 0)
        return 0;

    ce->mime_type = "text/plain";
    return 1;
}
