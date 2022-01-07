
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CreateLockFile (int ,int,char*,int,int ) ;
 int DIRECTORY_LOCK_FILE ;
 int DataDir ;

void
CreateDataDirLockFile(bool amPostmaster)
{
 CreateLockFile(DIRECTORY_LOCK_FILE, amPostmaster, "", 1, DataDir);
}
