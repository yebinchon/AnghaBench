
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ull; int sll; int ul; int sl; int ui; int si; } ;
struct TYPE_5__ {int type; TYPE_1__ val; } ;
typedef TYPE_2__ cval_t ;
__attribute__((used)) static int boolean(cval_t *v)
{
 switch(v->type)
 {
 case 133: return v->val.si != 0;
 case 130: return v->val.ui != 0;
 case 131: return v->val.sl != 0;
 case 128: return v->val.ul != 0;
 case 132: return v->val.sll != 0;
 case 129: return v->val.ull != 0;
 }
 return 0;
}
