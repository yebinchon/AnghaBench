
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int strip_num; struct TYPE_4__** v1_codebook; struct TYPE_4__** v4_codebook; } ;
typedef TYPE_1__ cinepak_info ;


 int heap_free (TYPE_1__*) ;

__attribute__((used)) static void free_cvinfo( cinepak_info *cvinfo )
{
    unsigned int i;

    for( i=0; i<cvinfo->strip_num; i++ )
    {
        heap_free(cvinfo->v4_codebook[i]);
        heap_free(cvinfo->v1_codebook[i]);
    }
    heap_free( cvinfo );
}
