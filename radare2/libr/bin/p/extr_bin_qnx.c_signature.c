
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int signature; } ;
struct TYPE_9__ {TYPE_2__ rwend; } ;
struct TYPE_8__ {TYPE_1__* o; } ;
struct TYPE_6__ {TYPE_4__* bin_obj; } ;
typedef TYPE_3__ RBinFile ;
typedef TYPE_4__ QnxObj ;


 char* r_str_dup (int *,int ) ;
 int sdb_itoa (int ,char*,int) ;

__attribute__((used)) static char *signature(RBinFile *bf, bool json) {
  char buf[64];
  QnxObj *qo = bf->o->bin_obj;
 return qo? r_str_dup (((void*)0), sdb_itoa (qo->rwend.signature, buf, 10)): ((void*)0);
}
