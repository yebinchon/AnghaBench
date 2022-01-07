
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* ref; } ;
struct TYPE_5__ {TYPE_2__ type; } ;
typedef TYPE_2__ CType ;



__attribute__((used)) static inline CType *pointed_type(CType *type) {
 return &type->ref->type;
}
