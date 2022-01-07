
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int float4 ;
typedef int StringInfo ;


 int pq_getmsgint (int ,int) ;

float4
pq_getmsgfloat4(StringInfo msg)
{
 union
 {
  float4 f;
  uint32 i;
 } swap;

 swap.i = pq_getmsgint(msg, 4);
 return swap.f;
}
