
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tm; int attr; int rm; } ;


 int HLF_L ;
 int hl_attr (int ) ;
 int last_pat_prog (int *) ;
 int no_hlsearch ;
 scalar_t__ p_hls ;
 int p_rdt ;
 int profile_setlimit (int ,int *) ;
 TYPE_1__ search_hl ;

__attribute__((used)) static void
start_search_hl()
{
    if (p_hls && !no_hlsearch)
    {
 last_pat_prog(&search_hl.rm);
 search_hl.attr = hl_attr(HLF_L);




    }
}
