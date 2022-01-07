
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra {int dummy; } ;


 int talloc_free (struct ra*) ;

__attribute__((used)) static void destroy_ra_pl(struct ra *ra)
{
    talloc_free(ra);
}
