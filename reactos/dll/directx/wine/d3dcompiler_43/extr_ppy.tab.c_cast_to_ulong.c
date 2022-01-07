
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ull; int ul; int sll; int ui; int si; } ;
struct TYPE_5__ {int type; TYPE_1__ val; } ;
typedef TYPE_2__ cval_t ;
__attribute__((used)) static void cast_to_ulong(cval_t *v)
{
 switch(v->type)
 {
 case 133: v->val.ul = v->val.si; break;
 case 130: v->val.ul = v->val.ui; break;
 case 131: break;
 case 128: break;
 case 132: v->val.ul = v->val.sll; break;
 case 129: v->val.ul = v->val.ull; break;
 }
 v->type = 128;
}
