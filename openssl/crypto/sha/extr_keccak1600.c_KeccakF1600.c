
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int Round (int **,int **,size_t) ;

__attribute__((used)) static void KeccakF1600(uint64_t A[5][5])
{
    uint64_t T[5][5];
    size_t i;
    for (i = 0; i < 24; i += 2) {
        Round(T, A, i);
        Round(A, T, i + 1);
    }
}
