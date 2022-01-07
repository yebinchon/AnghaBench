
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* malloc (int) ;

__attribute__((used)) static int
setup(void **state) {
    int *answer = malloc(sizeof(int));

    *answer = 42;
    *state = answer;

    return 0;
}
