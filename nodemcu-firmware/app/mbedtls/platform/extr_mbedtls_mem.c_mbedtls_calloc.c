
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* calloc (size_t,size_t) ;

void *mbedtls_calloc(size_t n, size_t sz) { return calloc(n, sz); }
