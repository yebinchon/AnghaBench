
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dwMagic; scalar_t__ cvinfo; } ;
typedef int LRESULT ;
typedef TYPE_1__ ICCVID_Info ;


 scalar_t__ ICCVID_MAGIC ;
 int free_cvinfo (scalar_t__) ;
 int heap_free (TYPE_1__*) ;

__attribute__((used)) static LRESULT ICCVID_Close( ICCVID_Info *info )
{
    if( (info==((void*)0)) || (info->dwMagic!=ICCVID_MAGIC) )
        return 0;
    if( info->cvinfo )
        free_cvinfo( info->cvinfo );
    heap_free( info );
    return 1;
}
