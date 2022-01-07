
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra {int priv; } ;


 int talloc_free (int ) ;

__attribute__((used)) static void gl_destroy(struct ra *ra)
{
    talloc_free(ra->priv);
}
