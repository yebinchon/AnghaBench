
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* expr; } ;
typedef TYPE_1__ RAnalEsilBB ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void _free_bb_cb(void *data) {
 RAnalEsilBB *bb = (RAnalEsilBB *)data;
 free (bb->expr);
 free (bb);
}
