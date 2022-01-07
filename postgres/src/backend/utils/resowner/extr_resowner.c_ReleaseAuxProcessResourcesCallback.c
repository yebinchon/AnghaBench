
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int ReleaseAuxProcessResources (int) ;

__attribute__((used)) static void
ReleaseAuxProcessResourcesCallback(int code, Datum arg)
{
 bool isCommit = (code == 0);

 ReleaseAuxProcessResources(isCommit);
}
