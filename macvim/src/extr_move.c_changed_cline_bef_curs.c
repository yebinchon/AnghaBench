
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int w_valid; } ;


 int VALID_CHEIGHT ;
 int VALID_TOPLINE ;
 int VALID_VIRTCOL ;
 int VALID_WCOL ;
 int VALID_WROW ;
 TYPE_1__* curwin ;

void
changed_cline_bef_curs()
{
    curwin->w_valid &= ~(VALID_WROW|VALID_WCOL|VALID_VIRTCOL
      |VALID_CHEIGHT|VALID_TOPLINE);
}
