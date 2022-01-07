
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct deflate {int dummy; } ;


 int free (struct deflate*) ;

__attribute__((used)) static void
deflate_free(struct deflate *ctx)
{

    free(ctx);
}
