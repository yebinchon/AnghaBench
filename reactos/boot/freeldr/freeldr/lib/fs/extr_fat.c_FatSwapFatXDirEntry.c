
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PFATX_DIRENTRY ;


 int CreateDate ;
 int CreateTime ;
 int Date ;
 int LastAccessDate ;
 int LastAccessTime ;
 int SD (int ,int ) ;
 int SW (int ,int ) ;
 int Size ;
 int StartCluster ;
 int Time ;

VOID FatSwapFatXDirEntry(PFATX_DIRENTRY Obj)
{
    SD(Obj, StartCluster);
    SD(Obj, Size);
    SW(Obj, Time);
    SW(Obj, Date);
    SW(Obj, CreateTime);
    SW(Obj, CreateDate);
    SW(Obj, LastAccessTime);
    SW(Obj, LastAccessDate);
}
