
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct redirect_priv {struct redirect_priv* to; } ;


 int free (struct redirect_priv*) ;

__attribute__((used)) static void redirect_destroy(void *data)
{
    struct redirect_priv *priv = data;

    if (priv) {
        free(priv->to);
        free(priv);
    }
}
