
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PDIRENTRY ;


 int ClusterHigh ;
 int ClusterLow ;
 int CreateDate ;
 int CreateTime ;
 int Date ;
 int LastAccessDate ;
 int SD (int ,int ) ;
 int SW (int ,int ) ;
 int Size ;
 int Time ;

VOID FatSwapDirEntry(PDIRENTRY Obj)
{
    SW(Obj, CreateTime);
    SW(Obj, CreateDate);
    SW(Obj, LastAccessDate);
    SW(Obj, ClusterHigh);
    SW(Obj, Time);
    SW(Obj, Date);
    SW(Obj, ClusterLow);
    SD(Obj, Size);
}
