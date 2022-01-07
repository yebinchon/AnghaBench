
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TSQuerySign ;


 int sizebitvec (int) ;

__attribute__((used)) static int
hemdist(TSQuerySign a, TSQuerySign b)
{
 TSQuerySign res = a ^ b;

 return sizebitvec(res);
}
