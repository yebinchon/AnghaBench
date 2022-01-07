
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int File ;


 int WARNING ;
 int elog (int ,char*,int ) ;

__attribute__((used)) static void
PrintFileLeakWarning(File file)
{
 elog(WARNING, "temporary file leak: File %d still referenced",
   file);
}
