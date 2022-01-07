
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ offset; int * chm_file; } ;
typedef TYPE_1__ ITSProtocol ;


 int chm_close (int *) ;

__attribute__((used)) static void release_chm(ITSProtocol *This)
{
    if(This->chm_file) {
        chm_close(This->chm_file);
        This->chm_file = ((void*)0);
    }
    This->offset = 0;
}
