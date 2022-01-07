
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serve_files_priv {int root_path_len; char const* prefix; } ;


 scalar_t__ streq (char const*,char*) ;

__attribute__((used)) static const char *get_rel_path(const char *full_path,
                                struct serve_files_priv *priv)
{
    const char *root_path = full_path + priv->root_path_len;

    if (priv->root_path_len == 1) {


        root_path--;
    }

    if (*root_path)
        return root_path;

    if (streq(priv->prefix, "/"))
        return "";

    return priv->prefix;
}
