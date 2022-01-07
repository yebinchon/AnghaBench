
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zval ;
struct TYPE_8__ {int has_error; } ;
struct TYPE_9__ {int keys; TYPE_1__ err; } ;
typedef TYPE_2__ res_context ;
struct TYPE_10__ {int field_offset; int (* to_zval ) (char const*,int *,TYPE_2__*) ;int * name; scalar_t__ name_size; } ;
typedef TYPE_3__ field_descriptor ;


 scalar_t__ IS_ARRAY ;
 int ZVAL_NULL (int *) ;
 int * Z_ARRVAL_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int assert (int) ;
 int do_to_zval_err (TYPE_2__*,char*,int *) ;
 int stub1 (char const*,int *,TYPE_2__*) ;
 int zend_llist_add_element (int *,void*) ;
 int zend_llist_remove_tail (int *) ;
 int * zend_symtable_str_update (int *,int *,scalar_t__,int *) ;

__attribute__((used)) static void to_zval_read_aggregation(const char *structure,
          zval *zarr,
          const field_descriptor *descriptors,
          res_context *ctx)
{
 const field_descriptor *descr;

 assert(Z_TYPE_P(zarr) == IS_ARRAY);
 assert(Z_ARRVAL_P(zarr) != ((void*)0));

 for (descr = descriptors; descr->name != ((void*)0) && !ctx->err.has_error; descr++) {
  zval *new_zv, tmp;

  if (descr->to_zval == ((void*)0)) {
   do_to_zval_err(ctx, "No information on how to convert native "
     "field into value for key '%s'", descr->name);
   break;
  }

  ZVAL_NULL(&tmp);
  new_zv = zend_symtable_str_update(Z_ARRVAL_P(zarr), descr->name, descr->name_size - 1, &tmp);

  zend_llist_add_element(&ctx->keys, (void*)&descr->name);
  descr->to_zval(structure + descr->field_offset, new_zv, ctx);
  zend_llist_remove_tail(&ctx->keys);
 }
}
