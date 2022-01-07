
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ progress; } ;
typedef scalar_t__ Datum ;
typedef TYPE_1__ CkptTsStatus ;



__attribute__((used)) static int
ts_ckpt_progress_comparator(Datum a, Datum b, void *arg)
{
 CkptTsStatus *sa = (CkptTsStatus *) a;
 CkptTsStatus *sb = (CkptTsStatus *) b;


 if (sa->progress < sb->progress)
  return 1;
 else if (sa->progress == sb->progress)
  return 0;
 else
  return -1;
}
