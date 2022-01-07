
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* OPENSSL_strdup (char*) ;

__attribute__((used)) static char *char_new(void) {
    return OPENSSL_strdup("test");
}
