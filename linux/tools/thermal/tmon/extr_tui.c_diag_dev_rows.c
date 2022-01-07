
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr_cooling_dev; } ;


 int DIAG_DEV_ROWS ;
 int max (int ,int) ;
 int min (int,int) ;
 TYPE_1__ ptdata ;

__attribute__((used)) static int diag_dev_rows(void)
{
 int entries = ptdata.nr_cooling_dev + 1;
 int rows = max(DIAG_DEV_ROWS, (entries + 1) / 2);
 return min(rows, entries);
}
