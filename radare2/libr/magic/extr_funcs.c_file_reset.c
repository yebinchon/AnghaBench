
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * buf; } ;
struct TYPE_6__ {int error; int mlist; scalar_t__ haderr; TYPE_1__ o; } ;
typedef TYPE_2__ RMagic ;


 int file_error (TYPE_2__*,int ,char*) ;
 int free (int *) ;

int file_reset(RMagic *ms) {
 if (!ms) {
  return 0;
 }
 free (ms->o.buf);
 ms->o.buf = ((void*)0);
 ms->haderr = 0;
 ms->error = -1;
 if (!ms->mlist) {
  file_error (ms, 0, "no magic files loaded! ");
  return -1;
 }
 return 0;
}
