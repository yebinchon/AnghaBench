
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ws_segsize; int ws_dir; } ;
typedef TYPE_1__ WALSegmentContext ;
struct TYPE_6__ {int ws_file; scalar_t__ ws_tli; scalar_t__ ws_off; scalar_t__ ws_segno; } ;
typedef TYPE_2__ WALOpenSegment ;


 int MAXPGPATH ;
 int snprintf (int ,int ,char*,char const*) ;

void
WALOpenSegmentInit(WALOpenSegment *seg, WALSegmentContext *segcxt,
       int segsize, const char *waldir)
{
 seg->ws_file = -1;
 seg->ws_segno = 0;
 seg->ws_off = 0;
 seg->ws_tli = 0;

 segcxt->ws_segsize = segsize;
 if (waldir)
  snprintf(segcxt->ws_dir, MAXPGPATH, "%s", waldir);
}
