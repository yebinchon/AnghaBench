
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pcre_uchar ;
struct TYPE_3__ {int * hwm; scalar_t__ start_workspace; int * start_code; } ;
typedef TYPE_1__ compile_data ;
typedef int BOOL ;


 scalar_t__ GET (int *,int) ;
 scalar_t__ LINK_SIZE ;
 int PUT (int *,int,int) ;
 scalar_t__ find_recurse (int *,int ) ;

__attribute__((used)) static void
adjust_recurse(pcre_uchar *group, int adjust, BOOL utf, compile_data *cd,
  size_t save_hwm_offset)
{
int offset;
pcre_uchar *hc;
pcre_uchar *ptr = group;

while ((ptr = (pcre_uchar *)find_recurse(ptr, utf)) != ((void*)0))
  {
  for (hc = (pcre_uchar *)cd->start_workspace + save_hwm_offset; hc < cd->hwm;
       hc += LINK_SIZE)
    {
    offset = (int)GET(hc, 0);
    if (cd->start_code + offset == ptr + 1) break;
    }




  if (hc >= cd->hwm)
    {
    offset = (int)GET(ptr, 1);
    if (cd->start_code + offset >= group) PUT(ptr, 1, offset + adjust);
    }

  ptr += 1 + LINK_SIZE;
  }



for (hc = (pcre_uchar *)cd->start_workspace + save_hwm_offset; hc < cd->hwm;
     hc += LINK_SIZE)
  {
  offset = (int)GET(hc, 0);
  PUT(hc, 0, offset + adjust);
  }
}
