
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int QTNode ;


 int QTNodeCompare (int * const,int * const) ;

__attribute__((used)) static int
cmpQTN(const void *a, const void *b)
{
 return QTNodeCompare(*(QTNode *const *) a, *(QTNode *const *) b);
}
