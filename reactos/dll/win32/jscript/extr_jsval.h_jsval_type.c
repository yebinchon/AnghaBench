
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int jsval_type_t ;
struct TYPE_6__ {int tag; } ;
struct TYPE_7__ {TYPE_1__ s; } ;
struct TYPE_8__ {int type; TYPE_2__ u; } ;
typedef TYPE_3__ jsval_t ;


 int JSV_NUMBER ;
 scalar_t__ is_number (TYPE_3__) ;

__attribute__((used)) static inline jsval_type_t jsval_type(jsval_t v)
{



    return v.type;

}
