
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * sst_tab; scalar_t__ sst_ss; scalar_t__ sst_dirlen; scalar_t__ sst_len; } ;
typedef TYPE_1__ cdf_stream_t ;


 int efree (int *) ;

int
cdf_zero_stream(cdf_stream_t *scn)
{
 scn->sst_len = 0;
 scn->sst_dirlen = 0;
 scn->sst_ss = 0;
 efree(scn->sst_tab);
 scn->sst_tab = ((void*)0);
 return -1;
}
