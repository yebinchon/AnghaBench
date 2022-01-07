
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int val; int flag; } ;
typedef TYPE_1__ ITEM ;


 int AHASHVAL (int ) ;
 scalar_t__ FLG_CANLOOKSIGN (int ) ;
 int GETBIT (void*,int ) ;

__attribute__((used)) static bool
checkcondition_bit(void *checkval, ITEM *val)
{
 return (FLG_CANLOOKSIGN(val->flag)) ? GETBIT(checkval, AHASHVAL(val->val)) : 1;
}
