
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;

__attribute__((used)) static int count_lines(char *text)
{
    int count = 0;
    while (text) {
        char *next = strchr(text, '\n');
        if (!next || (next[0] == '\n' && !next[1]))
            break;
        text = next + 1;
        count++;
    }
    return count;
}
