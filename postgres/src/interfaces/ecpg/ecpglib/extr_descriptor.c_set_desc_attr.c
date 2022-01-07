
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct variable {scalar_t__ type; scalar_t__ value; } ;
struct descriptor_item {int is_binary; char* data; int data_len; } ;
struct ECPGgeneric_varchar {int len; } ;


 scalar_t__ ECPGt_bytea ;
 int ecpg_free (char*) ;

__attribute__((used)) static void
set_desc_attr(struct descriptor_item *desc_item, struct variable *var,
     char *tobeinserted)
{
 if (var->type != ECPGt_bytea)
  desc_item->is_binary = 0;

 else
 {
  struct ECPGgeneric_varchar *variable =
  (struct ECPGgeneric_varchar *) (var->value);

  desc_item->is_binary = 1;
  desc_item->data_len = variable->len;
 }

 ecpg_free(desc_item->data);
 desc_item->data = (char *) tobeinserted;
}
