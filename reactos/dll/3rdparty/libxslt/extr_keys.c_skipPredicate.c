
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char xmlChar ;


 int skipString (char const*,int) ;

__attribute__((used)) static int
skipPredicate(const xmlChar *cur, int end) {
    if ((cur == ((void*)0)) || (end < 0)) return(-1);
    if (cur[end] != '[') return(end);
    end++;
    while (cur[end] != 0) {
        if ((cur[end] == '\'') || (cur[end] == '"')) {
     end = skipString(cur, end);
     if (end <= 0)
         return(-1);
     continue;
 } else if (cur[end] == '[') {
     end = skipPredicate(cur, end);
     if (end <= 0)
         return(-1);
     continue;
 } else if (cur[end] == ']')
     return(end + 1);
 end++;
    }
    return(-1);
}
