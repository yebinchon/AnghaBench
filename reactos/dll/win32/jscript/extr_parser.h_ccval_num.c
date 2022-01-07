
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {double n; } ;
struct TYPE_5__ {TYPE_1__ u; int is_num; } ;
typedef TYPE_2__ ccval_t ;


 int TRUE ;

__attribute__((used)) static inline ccval_t ccval_num(double n)
{
    ccval_t r;
    r.is_num = TRUE;
    r.u.n = n;
    return r;
}
