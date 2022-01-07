
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pending_list {size_t num; TYPE_3__* objs; } ;
struct location {int dummy; } ;
typedef enum DataKind { ____Placeholder_DataKind } DataKind ;
struct TYPE_4__ {int kind; struct location loc; int type; int name; } ;
struct TYPE_5__ {TYPE_1__ var; } ;
struct TYPE_6__ {TYPE_2__ u; int tag; } ;


 int PENDING_VAR ;
 int pending_make_room (struct pending_list*) ;
 int stab_strcpy (int ,int,char const*) ;
 int stabs_parse_type (char const*) ;

__attribute__((used)) static inline void pending_add_var(struct pending_list* pending, const char* name,
                                   enum DataKind dt, const struct location* loc)
{
    pending_make_room(pending);
    pending->objs[pending->num].tag = PENDING_VAR;
    stab_strcpy(pending->objs[pending->num].u.var.name,
                sizeof(pending->objs[pending->num].u.var.name), name);
    pending->objs[pending->num].u.var.type = stabs_parse_type(name);
    pending->objs[pending->num].u.var.kind = dt;
    pending->objs[pending->num].u.var.loc = *loc;
    pending->num++;
}
