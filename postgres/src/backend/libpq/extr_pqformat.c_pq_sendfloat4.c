
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int float4 ;
typedef int StringInfo ;


 int pq_sendint32 (int ,int ) ;

void
pq_sendfloat4(StringInfo buf, float4 f)
{
 union
 {
  float4 f;
  uint32 i;
 } swap;

 swap.f = f;
 pq_sendint32(buf, swap.i);
}
