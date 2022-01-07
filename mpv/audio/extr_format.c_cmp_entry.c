
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry {int score; } ;


 int CMP_INT (int ,int ) ;

__attribute__((used)) static int cmp_entry(const void *a, const void *b)
{

    return -(((struct entry *)a)->score > ((struct entry *)b)->score ? 1 : (((struct entry *)a)->score < ((struct entry *)b)->score ? -1 : 0));
}
