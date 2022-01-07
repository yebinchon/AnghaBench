
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TocEntry ;
typedef int ArchiveHandle ;


 int ahprintf (int *,char*) ;

__attribute__((used)) static void
_EndData(ArchiveHandle *AH, TocEntry *te)
{
 ahprintf(AH, "\n\n");
}
