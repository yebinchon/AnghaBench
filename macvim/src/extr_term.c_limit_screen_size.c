
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Columns ;
 int MIN_COLUMNS ;
 int Rows ;

void
limit_screen_size()
{
    if (Columns < MIN_COLUMNS)
 Columns = MIN_COLUMNS;
    else if (Columns > 10000)
 Columns = 10000;
    if (Rows > 1000)
 Rows = 1000;
}
