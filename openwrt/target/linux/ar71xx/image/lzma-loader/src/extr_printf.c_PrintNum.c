
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
PrintNum(char * buf, unsigned long u, int base, int negFlag,
  int length, int ladjust, char padc, int upcase)
{
    int actualLength =0;
    char *p = buf;
    int i;

    do {
 int tmp = u %base;
 if (tmp <= 9) {
     *p++ = '0' + tmp;
 } else if (upcase) {
     *p++ = 'A' + tmp - 10;
 } else {
     *p++ = 'a' + tmp - 10;
 }
 u /= base;
    } while (u != 0);

    if (negFlag) {
 *p++ = '-';
    }


    actualLength = p - buf;
    if (length < actualLength) length = actualLength;


    if (ladjust) {
 padc = ' ';
    }
    if (negFlag && !ladjust && (padc == '0')) {
 for (i = actualLength-1; i< length-1; i++) buf[i] = padc;
 buf[length -1] = '-';
    } else {
 for (i = actualLength; i< length; i++) buf[i] = padc;
    }



    {
 int begin = 0;
 int end;
 if (ladjust) {
     end = actualLength - 1;
 } else {
     end = length -1;
 }

 while (end > begin) {
     char tmp = buf[begin];
     buf[begin] = buf[end];
     buf[end] = tmp;
     begin ++;
     end --;
 }
    }


    return length;
}
