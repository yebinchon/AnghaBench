
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fileset; int name; } ;
typedef scalar_t__ File ;
typedef TYPE_1__ BufFile ;


 int Assert (int) ;
 int MAXPGPATH ;
 scalar_t__ SharedFileSetCreate (int ,char*) ;
 int SharedFileSetDelete (int ,char*,int) ;
 int SharedSegmentName (char*,int ,int) ;

__attribute__((used)) static File
MakeNewSharedSegment(BufFile *buffile, int segment)
{
 char name[MAXPGPATH];
 File file;







 SharedSegmentName(name, buffile->name, segment + 1);
 SharedFileSetDelete(buffile->fileset, name, 1);


 SharedSegmentName(name, buffile->name, segment);
 file = SharedFileSetCreate(buffile->fileset, name);


 Assert(file > 0);

 return file;
}
