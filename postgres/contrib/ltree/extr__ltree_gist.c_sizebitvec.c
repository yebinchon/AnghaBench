
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef scalar_t__ BITVECP ;


 int ASIGLEN ;
 int pg_popcount (char const*,int ) ;

__attribute__((used)) static int32
sizebitvec(BITVECP sign)
{
 return pg_popcount((const char *) sign, ASIGLEN);
}
