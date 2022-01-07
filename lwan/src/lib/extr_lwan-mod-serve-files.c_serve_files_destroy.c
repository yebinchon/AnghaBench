
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serve_files_priv {struct serve_files_priv* prefix; struct serve_files_priv* root_path; int root_fd; int cache; int directory_list_tpl; } ;


 int cache_destroy (int ) ;
 int close (int ) ;
 int free (struct serve_files_priv*) ;
 int lwan_status_warning (char*) ;
 int lwan_tpl_free (int ) ;

__attribute__((used)) static void serve_files_destroy(void *data)
{
    struct serve_files_priv *priv = data;

    if (!priv) {
        lwan_status_warning("Nothing to shutdown");
        return;
    }

    lwan_tpl_free(priv->directory_list_tpl);
    cache_destroy(priv->cache);
    close(priv->root_fd);
    free(priv->root_path);
    free(priv->prefix);
    free(priv);
}
