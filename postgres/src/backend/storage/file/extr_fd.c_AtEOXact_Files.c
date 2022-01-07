
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CleanupTempFiles (int,int) ;
 int numTempTableSpaces ;
 int * tempTableSpaces ;

void
AtEOXact_Files(bool isCommit)
{
 CleanupTempFiles(isCommit, 0);
 tempTableSpaces = ((void*)0);
 numTempTableSpaces = -1;
}
