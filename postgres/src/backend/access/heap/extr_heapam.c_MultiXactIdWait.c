
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;
typedef int XLTW_Oper ;
typedef int Relation ;
typedef int MultiXactStatus ;
typedef int MultiXactId ;
typedef int ItemPointer ;


 int Do_MultiXactIdWait (int ,int ,int ,int,int ,int ,int ,int*) ;

__attribute__((used)) static void
MultiXactIdWait(MultiXactId multi, MultiXactStatus status, uint16 infomask,
    Relation rel, ItemPointer ctid, XLTW_Oper oper,
    int *remaining)
{
 (void) Do_MultiXactIdWait(multi, status, infomask, 0,
         rel, ctid, oper, remaining);
}
