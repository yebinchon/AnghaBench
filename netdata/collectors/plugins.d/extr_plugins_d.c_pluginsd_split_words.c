
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pluginsd_space ;
 int quoted_strings_splitter (char*,char**,int,int ) ;

inline int pluginsd_split_words(char *str, char **words, int max_words) {
    return quoted_strings_splitter(str, words, max_words, pluginsd_space);
}
