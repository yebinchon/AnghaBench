
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int BITVECP ;


 int SIGLEN ;
 int pg_popcount (int ,int ) ;

__attribute__((used)) static int32
sizebitvec(BITVECP sign)
{
 return pg_popcount(sign, SIGLEN);
}
