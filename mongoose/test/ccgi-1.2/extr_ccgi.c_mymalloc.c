
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fputs (char*,int ) ;
 void* malloc (int) ;
 int stderr ;

__attribute__((used)) static void *
mymalloc(int size) {
    void *ret = malloc(size);
    if (ret == 0) {
        fputs("C CGI Library out of memory\n", stderr);
        exit(1);
    }
    return ret;
}
