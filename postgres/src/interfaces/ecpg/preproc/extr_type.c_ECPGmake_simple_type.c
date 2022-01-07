
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * element; } ;
struct ECPGtype {int type; char* size; int counter; int * struct_sizeof; TYPE_1__ u; int * type_name; } ;
typedef enum ECPGttype { ____Placeholder_ECPGttype } ECPGttype ;


 scalar_t__ mm_alloc (int) ;

struct ECPGtype *
ECPGmake_simple_type(enum ECPGttype type, char *size, int counter)
{
 struct ECPGtype *ne = (struct ECPGtype *) mm_alloc(sizeof(struct ECPGtype));

 ne->type = type;
 ne->type_name = ((void*)0);
 ne->size = size;
 ne->u.element = ((void*)0);
 ne->struct_sizeof = ((void*)0);
 ne->counter = counter;

 return ne;
}
