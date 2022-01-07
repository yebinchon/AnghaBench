
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SMgrRelation ;
typedef int ForkNumber ;


 int EXTENSION_RETURN_NULL ;
 int mdclose (int ,int ) ;
 int * mdopenfork (int ,int ,int ) ;

bool
mdexists(SMgrRelation reln, ForkNumber forkNum)
{




 mdclose(reln, forkNum);

 return (mdopenfork(reln, forkNum, EXTENSION_RETURN_NULL) != ((void*)0));
}
