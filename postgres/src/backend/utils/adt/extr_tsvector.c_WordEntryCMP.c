
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WordEntry ;


 int compareentry (int *,int *,char*) ;

__attribute__((used)) static int
WordEntryCMP(WordEntry *a, WordEntry *b, char *buf)
{
 return compareentry(a, b, buf);
}
