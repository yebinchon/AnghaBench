
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
struct TYPE_3__ {int re; } ;
typedef TYPE_1__ pcre_cache_entry ;


 scalar_t__ Z_PTR_P (int *) ;
 int efree (TYPE_1__*) ;
 int pcre2_code_free (int ) ;

__attribute__((used)) static void php_efree_pcre_cache(zval *data)
{
 pcre_cache_entry *pce = (pcre_cache_entry *) Z_PTR_P(data);
 if (!pce) return;
 pcre2_code_free(pce->re);
 efree(pce);
}
