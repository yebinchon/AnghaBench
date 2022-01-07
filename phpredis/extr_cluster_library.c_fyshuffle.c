
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double RAND_MAX ;
 double rand () ;

__attribute__((used)) static void fyshuffle(int *array, size_t len) {
    int temp, n = len;
    size_t r;


    while (n > 1) {
        r = ((int)((double)n-- * (rand() / (RAND_MAX+1.0))));
        temp = array[n];
        array[n] = array[r];
        array[r] = temp;
    };
}
