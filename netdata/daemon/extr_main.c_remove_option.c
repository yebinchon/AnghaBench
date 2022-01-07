
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void remove_option(int opt_index, int *argc, char **argv) {
    int i;


    do {
        *argc = *argc - 1;
        for(i = opt_index; i < *argc; i++) {
            argv[i] = argv[i+1];
        }
        i = opt_index;
    } while(argv[i][0] != '-' && opt_index >= *argc);
}
