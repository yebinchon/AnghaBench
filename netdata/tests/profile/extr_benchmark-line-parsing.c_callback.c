
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long fast_strtoull (char*) ;

__attribute__((used)) static inline void callback(void *data1, void *data2) {
    char *string = data1;
    unsigned long long *value = data2;
    *value = fast_strtoull(string);
}
