
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
typedef TYPE_2__ ser_context ;
struct TYPE_10__ {char* name; int field_offset; scalar_t__ required; int (* from_zval ) (int *,char*,TYPE_2__*) ;scalar_t__ name_size; } ;
typedef TYPE_3__ field_descriptor ;


 scalar_t__ IS_ARRAY ;
 int Z_ARRVAL_P (int const*) ;
 scalar_t__ Z_TYPE_P (int const*) ;
 int do_from_zval_err (TYPE_2__*,char*,char*) ;
 int stub1 (int *,char*,TYPE_2__*) ;
 int * zend_hash_str_find (int ,char*,scalar_t__) ;
 int zend_llist_add_element (int *,void*) ;
 int zend_llist_remove_tail (int *) ;

__attribute__((used)) static void from_zval_write_aggregation(const zval *container,
          char *structure,
          const field_descriptor *descriptors,
          ser_context *ctx)
{
 const field_descriptor *descr;
 zval *elem;

 if (Z_TYPE_P(container) != IS_ARRAY) {
  do_from_zval_err(ctx, "%s", "expected an array here");
 }

 for (descr = descriptors; descr->name != ((void*)0) && !ctx->err.has_error; descr++) {
  if ((elem = zend_hash_str_find(Z_ARRVAL_P(container),
    descr->name, descr->name_size - 1)) != ((void*)0)) {

   if (descr->from_zval == ((void*)0)) {
    do_from_zval_err(ctx, "No information on how to convert value "
      "of key '%s'", descr->name);
    break;
   }

   zend_llist_add_element(&ctx->keys, (void*)&descr->name);
   descr->from_zval(elem, ((char*)structure) + descr->field_offset, ctx);
   zend_llist_remove_tail(&ctx->keys);

  } else if (descr->required) {
   do_from_zval_err(ctx, "The key '%s' is required", descr->name);
   break;
  }
 }
}
