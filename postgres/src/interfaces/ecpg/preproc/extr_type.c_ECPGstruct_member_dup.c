
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ECPGtype {int dummy; } ;
struct ECPGstruct_member {struct ECPGstruct_member* next; int name; TYPE_4__* type; } ;
struct TYPE_7__ {TYPE_2__* element; int members; } ;
struct TYPE_8__ {int type; int counter; int size; TYPE_3__ u; int struct_sizeof; int type_name; } ;
struct TYPE_5__ {int members; } ;
struct TYPE_6__ {int const type; int counter; int size; int struct_sizeof; int type_name; TYPE_1__ u; } ;


 struct ECPGtype* ECPGmake_array_type (struct ECPGtype*,int ) ;
 struct ECPGtype* ECPGmake_simple_type (int,int ,int ) ;
 int ECPGmake_struct_member (int ,struct ECPGtype*,struct ECPGstruct_member**) ;
 struct ECPGtype* ECPGmake_struct_type (int ,int,int ,int ) ;




struct ECPGstruct_member *
ECPGstruct_member_dup(struct ECPGstruct_member *rm)
{
 struct ECPGstruct_member *new = ((void*)0);

 while (rm)
 {
  struct ECPGtype *type;

  switch (rm->type->type)
  {
   case 129:
   case 128:
    type = ECPGmake_struct_type(rm->type->u.members, rm->type->type, rm->type->type_name, rm->type->struct_sizeof);
    break;
   case 130:





    if (rm->type->u.element->type == 129 || rm->type->u.element->type == 128)
     type = ECPGmake_struct_type(rm->type->u.element->u.members, rm->type->u.element->type, rm->type->u.element->type_name, rm->type->u.element->struct_sizeof);
    else
     type = ECPGmake_array_type(ECPGmake_simple_type(rm->type->u.element->type, rm->type->u.element->size, rm->type->u.element->counter), rm->type->size);
    break;
   default:
    type = ECPGmake_simple_type(rm->type->type, rm->type->size, rm->type->counter);
    break;
  }

  ECPGmake_struct_member(rm->name, type, &new);

  rm = rm->next;
 }

 return new;
}
