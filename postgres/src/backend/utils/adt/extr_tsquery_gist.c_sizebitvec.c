
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TSQuerySign ;


 int TSQS_SIGLEN ;

__attribute__((used)) static int
sizebitvec(TSQuerySign sign)
{
 int size = 0,
    i;

 for (i = 0; i < TSQS_SIGLEN; i++)
  size += 0x01 & (sign >> i);

 return size;
}
