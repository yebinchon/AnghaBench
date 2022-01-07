
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CLzma2Dec ;


 int Lzma2Dec_Init (int *) ;

__attribute__((used)) static void Lzma2State_Init(void *pp)
{
  Lzma2Dec_Init((CLzma2Dec *)pp);
}
