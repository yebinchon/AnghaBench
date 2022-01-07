
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int dsm_segment ;
struct TYPE_3__ {int fileset; } ;
typedef TYPE_1__ Sharedsort ;


 int SharedFileSetAttach (int *,int *) ;

void
tuplesort_attach_shared(Sharedsort *shared, dsm_segment *seg)
{

 SharedFileSetAttach(&shared->fileset, seg);
}
