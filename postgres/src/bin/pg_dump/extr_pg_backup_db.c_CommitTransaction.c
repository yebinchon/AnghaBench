
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ArchiveHandle ;
typedef int Archive ;


 int ExecuteSqlCommand (int *,char*,char*) ;

void
CommitTransaction(Archive *AHX)
{
 ArchiveHandle *AH = (ArchiveHandle *) AHX;

 ExecuteSqlCommand(AH, "COMMIT", "could not commit database transaction");
}
