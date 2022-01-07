
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct varlena {int dummy; } ;
typedef int gbtree_vinfo ;
struct TYPE_6__ {int offset; int page; int rel; int key; scalar_t__ leafkey; } ;
typedef TYPE_1__ GISTENTRY ;
typedef int GBT_VARKEY ;


 struct varlena* PG_DETOAST_DATUM (int ) ;
 int PointerGetDatum (int *) ;
 int * gbt_var_key_from_datum (struct varlena*) ;
 int gistentryinit (TYPE_1__,int ,int ,int ,int ,int) ;
 TYPE_1__* palloc (int) ;

GISTENTRY *
gbt_var_compress(GISTENTRY *entry, const gbtree_vinfo *tinfo)
{
 GISTENTRY *retval;

 if (entry->leafkey)
 {
  struct varlena *leaf = PG_DETOAST_DATUM(entry->key);
  GBT_VARKEY *r;

  r = gbt_var_key_from_datum(leaf);

  retval = palloc(sizeof(GISTENTRY));
  gistentryinit(*retval, PointerGetDatum(r),
       entry->rel, entry->page,
       entry->offset, 1);
 }
 else
  retval = entry;

 return retval;
}
