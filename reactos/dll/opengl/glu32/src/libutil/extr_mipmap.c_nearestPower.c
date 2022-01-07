
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLuint ;



__attribute__((used)) static int nearestPower(GLuint value)
{
    int i;

    i = 1;


    if (value == 0) return -1;

    for (;;) {
 if (value == 1) {
     return i;
 } else if (value == 3) {
     return i*4;
 }
 value = value >> 1;
 i *= 2;
    }
}
