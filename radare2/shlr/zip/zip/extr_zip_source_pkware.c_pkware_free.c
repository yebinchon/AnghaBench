
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trad_pkware {int dummy; } ;


 int free (struct trad_pkware*) ;

__attribute__((used)) static void
pkware_free(struct trad_pkware *ctx)
{
    free(ctx);
}
