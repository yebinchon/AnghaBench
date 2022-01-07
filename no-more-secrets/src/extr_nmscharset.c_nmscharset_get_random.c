
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t CHAR_COUNT ;
 char** charTable ;
 size_t rand () ;

char *nmscharset_get_random(void) {
 return charTable[rand() % CHAR_COUNT];
}
