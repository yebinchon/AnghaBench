
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_tpl {int chunks; } ;


 int free (struct lwan_tpl*) ;
 int free_chunk_array (int *) ;

void lwan_tpl_free(struct lwan_tpl *tpl)
{
    if (tpl) {
        free_chunk_array(&tpl->chunks);
        free(tpl);
    }
}
