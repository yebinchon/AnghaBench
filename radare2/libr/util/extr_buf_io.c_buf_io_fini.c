
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int priv; } ;
typedef TYPE_1__ RBuffer ;


 int R_FREE (int ) ;

__attribute__((used)) static bool buf_io_fini(RBuffer *b) {

 R_FREE (b->priv);
 return 1;
}
