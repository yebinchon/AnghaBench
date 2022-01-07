
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ tc_space (char) ;
 scalar_t__ unlikely (scalar_t__) ;

__attribute__((used)) static inline void tc_split_words(char *str, char **words, int max_words) {
    char *s = str;
    int i = 0;


    while(tc_space(*s)) s++;


    words[i++] = s;


    while(*s) {

        if(unlikely(tc_space(*s))) {


            *s++ = '\0';


            while(tc_space(*s)) s++;


            if(!*s) break;


            if(i < max_words) words[i++] = s;
            else break;
        }
        else s++;
    }


    while(i < max_words) words[i++] = ((void*)0);
}
