
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int month; int time; } ;
typedef TYPE_1__ interval ;



int
PGTYPESinterval_copy(interval * intvlsrc, interval * intvldest)
{
 intvldest->time = intvlsrc->time;
 intvldest->month = intvlsrc->month;

 return 0;
}
