
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;
typedef int float8 ;
typedef int StringInfo ;


 int pq_sendint64 (int ,int ) ;

void
pq_sendfloat8(StringInfo buf, float8 f)
{
 union
 {
  float8 f;
  int64 i;
 } swap;

 swap.f = f;
 pq_sendint64(buf, swap.i);
}
