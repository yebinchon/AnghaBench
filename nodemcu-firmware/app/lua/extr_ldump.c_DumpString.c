
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ strsize_t ;
struct TYPE_5__ {scalar_t__ len; } ;
struct TYPE_6__ {TYPE_1__ tsv; } ;
typedef TYPE_2__ TString ;
typedef int DumpState ;


 int DumpBlock (int *,scalar_t__,int *) ;
 int DumpSize (scalar_t__,int *) ;
 int * getstr (TYPE_2__ const*) ;

__attribute__((used)) static void DumpString(const TString* s, DumpState* D)
{
 if (s==((void*)0) || getstr(s)==((void*)0))
 {
  strsize_t size=0;
  DumpSize(size,D);
 }
 else
 {
  strsize_t size=( strsize_t )s->tsv.len+1;
  DumpSize(size,D);
  DumpBlock(getstr(s),size,D);
 }
}
