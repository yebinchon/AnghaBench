
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int methflag; int methname; int classflag; int classname; int demflag; int demname; int nameflag; int name; } ;
typedef TYPE_1__ SymName ;


 int R_FREE (int ) ;

__attribute__((used)) static void snFini(SymName *sn) {
 R_FREE (sn->name);
 R_FREE (sn->nameflag);
 R_FREE (sn->demname);
 R_FREE (sn->demflag);
 R_FREE (sn->classname);
 R_FREE (sn->classflag);
 R_FREE (sn->methname);
 R_FREE (sn->methflag);
}
