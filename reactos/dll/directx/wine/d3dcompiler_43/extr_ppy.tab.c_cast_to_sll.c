
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ul; int sll; int sl; int ui; int si; } ;
struct TYPE_5__ {int type; TYPE_1__ val; } ;
typedef TYPE_2__ cval_t ;
__attribute__((used)) static void cast_to_sll(cval_t *v)
{
 switch(v->type)
 {
 case 133: v->val.sll = v->val.si; break;
 case 130: v->val.sll = v->val.ui; break;
 case 131: v->val.sll = v->val.sl; break;
 case 128: v->val.sll = v->val.ul; break;
 case 132: break;
 case 129: break;
 }
 v->type = 132;
}
