
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* charCount ;
 size_t countPointer ;

void eraseCharCounts(void)
{
  while (countPointer > 0)
  {
    charCount[countPointer] = 0;
    countPointer--;
  }
  charCount[countPointer] = 0;
}
