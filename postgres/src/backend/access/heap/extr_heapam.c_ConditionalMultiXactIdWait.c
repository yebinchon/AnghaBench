
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;
typedef int Relation ;
typedef int MultiXactStatus ;
typedef int MultiXactId ;


 int Do_MultiXactIdWait (int ,int ,int ,int,int ,int *,int ,int*) ;
 int XLTW_None ;

__attribute__((used)) static bool
ConditionalMultiXactIdWait(MultiXactId multi, MultiXactStatus status,
         uint16 infomask, Relation rel, int *remaining)
{
 return Do_MultiXactIdWait(multi, status, infomask, 1,
         rel, ((void*)0), XLTW_None, remaining);
}
