
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char const*,int) ;

__attribute__((used)) static void display(const char *name, size_t size) {
    printf("%s\t%d\n", name, (int)size);
}
