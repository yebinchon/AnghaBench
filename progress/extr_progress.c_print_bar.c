
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int putchar (char) ;

void print_bar(float perc, int char_available)
{
int i;
int num;

num = (char_available / 100.0) * perc;

for (i = 0 ; i < num-1 ; i++) {
    putchar('=');
}
putchar('>');
i++;

for ( ; i < char_available ; i++)
    putchar(' ');

}
