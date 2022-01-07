
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int io_ptr; int tlist_cache; int plist_cache; } ;
typedef TYPE_1__ WindCtx ;


 int R_FREE (TYPE_1__*) ;
 int iob_close (int ) ;
 int r_list_free (int ) ;

void windbg_ctx_free(WindCtx **ctx) {
 if (!ctx || !*ctx) {
  return;
 }
 r_list_free ((*ctx)->plist_cache);
 r_list_free ((*ctx)->tlist_cache);
 iob_close ((*ctx)->io_ptr);
 R_FREE (*ctx);
}
