
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* shared; } ;
struct TYPE_9__ {TYPE_1__* shared; } ;
struct TYPE_8__ {int nextOffset; int nextMXact; } ;
struct TYPE_7__ {int latest_page_number; } ;
struct TYPE_6__ {int latest_page_number; } ;
typedef int MultiXactOffset ;
typedef int MultiXactId ;


 int MXOffsetToMemberPage (int ) ;
 int MultiXactIdToOffsetPage (int ) ;
 TYPE_5__* MultiXactMemberCtl ;
 TYPE_4__* MultiXactOffsetCtl ;
 TYPE_3__* MultiXactState ;

void
StartupMultiXact(void)
{
 MultiXactId multi = MultiXactState->nextMXact;
 MultiXactOffset offset = MultiXactState->nextOffset;
 int pageno;




 pageno = MultiXactIdToOffsetPage(multi);
 MultiXactOffsetCtl->shared->latest_page_number = pageno;




 pageno = MXOffsetToMemberPage(offset);
 MultiXactMemberCtl->shared->latest_page_number = pageno;
}
