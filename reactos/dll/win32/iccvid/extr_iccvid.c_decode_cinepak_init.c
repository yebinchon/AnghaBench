
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ strip_num; } ;
typedef TYPE_1__ cinepak_info ;


 TYPE_1__* heap_alloc (int) ;
 int* uiclip ;
 int* uiclp ;

__attribute__((used)) static cinepak_info *decode_cinepak_init(void)
{
    cinepak_info *cvinfo;
    int i;

    cvinfo = heap_alloc( sizeof (cinepak_info) );
    if( !cvinfo )
        return ((void*)0);
    cvinfo->strip_num = 0;

    if(uiclp == ((void*)0))
    {
        uiclp = uiclip+512;
        for(i = -512; i < 512; i++)
            uiclp[i] = (i < 0 ? 0 : (i > 255 ? 255 : i));
    }

    return cvinfo;
}
