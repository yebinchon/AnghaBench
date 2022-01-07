
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ tag; } ;
struct symt_enum {int vchildren; int base_type; TYPE_2__ symt; } ;
struct symt {int tag; } ;
struct TYPE_10__ {int lVal; } ;
struct TYPE_11__ {TYPE_3__ n3; int vt; } ;
struct TYPE_12__ {TYPE_4__ n2; } ;
struct TYPE_13__ {TYPE_5__ n1; } ;
struct TYPE_14__ {TYPE_6__ value; } ;
struct TYPE_8__ {int * next; int name; } ;
struct symt_data {struct symt symt; TYPE_7__ u; int type; TYPE_2__* container; int kind; TYPE_1__ hash_elt; } ;
struct module {int pool; } ;
typedef int BOOL ;


 int DataIsConstant ;
 int FALSE ;
 int SymTagData ;
 scalar_t__ SymTagEnum ;
 int TRUE ;
 int VT_I4 ;
 int assert (int) ;
 struct symt_data* pool_alloc (int *,int) ;
 int pool_strdup (int *,char const*) ;
 struct symt** vector_add (int *,int *) ;

BOOL symt_add_enum_element(struct module* module, struct symt_enum* enum_type,
                           const char* name, int value)
{
    struct symt_data* e;
    struct symt** p;

    assert(enum_type->symt.tag == SymTagEnum);
    e = pool_alloc(&module->pool, sizeof(*e));
    if (e == ((void*)0)) return FALSE;

    e->symt.tag = SymTagData;
    e->hash_elt.name = pool_strdup(&module->pool, name);
    e->hash_elt.next = ((void*)0);
    e->kind = DataIsConstant;
    e->container = &enum_type->symt;
    e->type = enum_type->base_type;
    e->u.value.n1.n2.vt = VT_I4;
    e->u.value.n1.n2.n3.lVal = value;

    p = vector_add(&enum_type->vchildren, &module->pool);
    if (!p) return FALSE;
    *p = &e->symt;

    return TRUE;
}
