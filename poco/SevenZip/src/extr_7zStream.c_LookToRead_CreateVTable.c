
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Seek; int Read; int Skip; int Look; } ;
struct TYPE_5__ {TYPE_1__ s; } ;
typedef TYPE_2__ CLookToRead ;


 int LookToRead_Look_Exact ;
 int LookToRead_Look_Lookahead ;
 int LookToRead_Read ;
 int LookToRead_Seek ;
 int LookToRead_Skip ;

void LookToRead_CreateVTable(CLookToRead *p, int lookahead)
{
  p->s.Look = lookahead ?
      LookToRead_Look_Lookahead :
      LookToRead_Look_Exact;
  p->s.Skip = LookToRead_Skip;
  p->s.Read = LookToRead_Read;
  p->s.Seek = LookToRead_Seek;
}
