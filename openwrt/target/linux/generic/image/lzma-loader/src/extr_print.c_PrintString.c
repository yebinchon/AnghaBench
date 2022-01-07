
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
PrintString(char * buf, char* s, int length, int ladjust)
{
    int i;
    int len=0;
    char* s1 = s;
    while (*s1++) len++;
    if (length < len) length = len;

    if (ladjust) {
 for (i=0; i< len; i++) buf[i] = s[i];
 for (i=len; i< length; i++) buf[i] = ' ';
    } else {
 for (i=0; i< length-len; i++) buf[i] = ' ';
 for (i=length-len; i < length; i++) buf[i] = s[i-length+len];
    }
    return length;
}
