
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;
typedef int float8 ;
typedef int StringInfo ;


 int pq_getmsgint64 (int ) ;

float8
pq_getmsgfloat8(StringInfo msg)
{
 union
 {
  float8 f;
  int64 i;
 } swap;

 swap.i = pq_getmsgint64(msg);
 return swap.f;
}
