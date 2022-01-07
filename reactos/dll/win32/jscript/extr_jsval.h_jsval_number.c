
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int as_uintptr; } ;
struct TYPE_7__ {int tag; TYPE_1__ u; } ;
struct TYPE_8__ {double n; TYPE_2__ s; } ;
struct TYPE_9__ {TYPE_3__ u; int type; } ;
typedef TYPE_4__ jsval_t ;


 int JSV_NUMBER ;

__attribute__((used)) static inline jsval_t jsval_number(double n)
{
    jsval_t ret;
    ret.type = JSV_NUMBER;
    ret.u.n = n;

    return ret;
}
