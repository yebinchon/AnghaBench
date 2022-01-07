
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MPMAX (int ,int) ;
 int MPMIN (int,int) ;

__attribute__((used)) static void clamp_size(int size, int *start, int *end)
{
    *start = MPMAX(0, *start);
    *end = MPMIN(size, *end);
    if (*start >= *end) {
        *start = 0;
        *end = 1;
    }
}
