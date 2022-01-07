
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int timeline; TYPE_1__* walmethod; } ;
struct TYPE_4__ {int (* existsfile ) (char*) ;} ;
typedef TYPE_2__ StreamCtl ;


 int MAXFNAMELEN ;
 int TLHistoryFileName (char*,int) ;
 int stub1 (char*) ;

__attribute__((used)) static bool
existsTimeLineHistoryFile(StreamCtl *stream)
{
 char histfname[MAXFNAMELEN];





 if (stream->timeline == 1)
  return 1;

 TLHistoryFileName(histfname, stream->timeline);

 return stream->walmethod->existsfile(histfname);
}
