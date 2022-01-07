
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SharedFileSet ;


 int CHECK_FOR_INTERRUPTS () ;
 int ERROR ;
 int MAXPGPATH ;
 int SharedFileSetDelete (int *,char*,int) ;
 int SharedSegmentName (char*,char const*,int) ;
 int elog (int ,char*,char const*) ;

void
BufFileDeleteShared(SharedFileSet *fileset, const char *name)
{
 char segment_name[MAXPGPATH];
 int segment = 0;
 bool found = 0;






 for (;;)
 {
  SharedSegmentName(segment_name, name, segment);
  if (!SharedFileSetDelete(fileset, segment_name, 1))
   break;
  found = 1;
  ++segment;

  CHECK_FOR_INTERRUPTS();
 }

 if (!found)
  elog(ERROR, "could not delete unknown shared BufFile \"%s\"", name);
}
