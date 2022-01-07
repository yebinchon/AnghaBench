
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * cvinfo; } ;
typedef int LRESULT ;
typedef TYPE_1__ ICCVID_Info ;


 int ICERR_OK ;
 int free_cvinfo (int *) ;

__attribute__((used)) static LRESULT ICCVID_DecompressEnd( ICCVID_Info *info )
{
    if( info->cvinfo )
    {
        free_cvinfo( info->cvinfo );
        info->cvinfo = ((void*)0);
    }
    return ICERR_OK;
}
