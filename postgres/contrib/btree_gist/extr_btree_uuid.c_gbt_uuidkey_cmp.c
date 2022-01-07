
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int upper; int lower; } ;
typedef TYPE_1__ uuidKEY ;
struct TYPE_4__ {scalar_t__ t; } ;
typedef TYPE_2__ Nsrt ;
typedef int FmgrInfo ;


 int uuid_internal_cmp (int *,int *) ;

__attribute__((used)) static int
gbt_uuidkey_cmp(const void *a, const void *b, FmgrInfo *flinfo)
{
 uuidKEY *ia = (uuidKEY *) (((const Nsrt *) a)->t);
 uuidKEY *ib = (uuidKEY *) (((const Nsrt *) b)->t);
 int res;

 res = uuid_internal_cmp(&ia->lower, &ib->lower);
 if (res == 0)
  res = uuid_internal_cmp(&ia->upper, &ib->upper);
 return res;
}
