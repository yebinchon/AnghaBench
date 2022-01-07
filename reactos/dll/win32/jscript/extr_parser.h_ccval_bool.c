
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int b; } ;
struct TYPE_5__ {TYPE_1__ u; int is_num; } ;
typedef TYPE_2__ ccval_t ;
typedef int BOOL ;


 int FALSE ;

__attribute__((used)) static inline ccval_t ccval_bool(BOOL b)
{
    ccval_t r;
    r.is_num = FALSE;
    r.u.b = b;
    return r;
}
