
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zic_t ;
struct TYPE_4__ {int dontmerge; int type; int at; } ;


 TYPE_1__* attypes ;
 TYPE_1__* growalloc (TYPE_1__*,int,size_t,int *) ;
 size_t timecnt ;
 int timecnt_alloc ;

__attribute__((used)) static void
addtt(zic_t starttime, int type)
{
 attypes = growalloc(attypes, sizeof *attypes, timecnt, &timecnt_alloc);
 attypes[timecnt].at = starttime;
 attypes[timecnt].dontmerge = 0;
 attypes[timecnt].type = type;
 ++timecnt;
}
