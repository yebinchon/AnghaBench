
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* o; } ;
struct TYPE_4__ {int * bin_obj; } ;
typedef int RList ;
typedef int RBuffer ;
typedef TYPE_2__ RBinFile ;


 int addptr (int *,char*,int,int *) ;
 int free ;
 int * r_list_newf (int ) ;

__attribute__((used)) static RList *symbols(RBinFile *bf) {
 RList *ret = ((void*)0);
 RBuffer *obj = bf->o->bin_obj;

 if (!(ret = r_list_newf (free))) {
  return ((void*)0);
 }

 addptr (ret, "int0", 2, obj);
 addptr (ret, "int1", 4, obj);
 addptr (ret, "timer2cmp", 6, obj);
 addptr (ret, "timer2ovf", 8, obj);
 addptr (ret, "timer1capt", 10, obj);
 addptr (ret, "timer1cmpa", 12, obj);
 return ret;
}
