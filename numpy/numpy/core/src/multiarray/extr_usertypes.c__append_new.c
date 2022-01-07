
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NPY_NOTYPE ;
 int PyErr_NoMemory () ;
 scalar_t__ realloc (int*,int) ;

__attribute__((used)) static int
_append_new(int **p_types, int insert)
{
    int n = 0;
    int *newtypes;
    int *types = *p_types;

    while (types[n] != NPY_NOTYPE) {
        n++;
    }
    newtypes = (int *)realloc(types, (n + 2)*sizeof(int));
    if (newtypes == ((void*)0)) {
        PyErr_NoMemory();
        return -1;
    }
    newtypes[n] = insert;
    newtypes[n + 1] = NPY_NOTYPE;


    *p_types = newtypes;
    return 0;
}
