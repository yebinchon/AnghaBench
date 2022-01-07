
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct variable {int arrsize; int ind_varcharsize; int ind_arrsize; int ind_offset; int * ind_value; int ** ind_pointer; int ind_type; scalar_t__ offset; int * pointer; int value; int varcharsize; int type; } ;
struct statement {int force_indicator; int lineno; } ;
struct descriptor_item {int indicator; int data; int data_len; scalar_t__ is_binary; } ;


 int ECPGt_NO_INDICATOR ;
 int ECPGt_char ;
 int ECPGt_int ;
 char* ecpg_alloc (int ,int ) ;
 int ecpg_store_input (int ,int ,struct variable*,char**,int) ;
 int memcpy (char*,int ,int ) ;
 int strlen (int ) ;

__attribute__((used)) static bool
store_input_from_desc(struct statement *stmt, struct descriptor_item *desc_item,
       char **tobeinserted)
{
 struct variable var;






 if (desc_item->is_binary)
 {
  if (!(*tobeinserted = ecpg_alloc(desc_item->data_len, stmt->lineno)))
   return 0;
  memcpy(*tobeinserted, desc_item->data, desc_item->data_len);
  return 1;
 }

 var.type = ECPGt_char;
 var.varcharsize = strlen(desc_item->data);
 var.value = desc_item->data;
 var.pointer = &(desc_item->data);
 var.arrsize = 1;
 var.offset = 0;

 if (!desc_item->indicator)
 {
  var.ind_type = ECPGt_NO_INDICATOR;
  var.ind_value = var.ind_pointer = ((void*)0);
  var.ind_varcharsize = var.ind_arrsize = var.ind_offset = 0;
 }
 else
 {
  var.ind_type = ECPGt_int;
  var.ind_value = &(desc_item->indicator);
  var.ind_pointer = &(var.ind_value);
  var.ind_varcharsize = var.ind_arrsize = 1;
  var.ind_offset = 0;
 }

 if (!ecpg_store_input(stmt->lineno, stmt->force_indicator, &var, tobeinserted, 0))
  return 0;

 return 1;
}
