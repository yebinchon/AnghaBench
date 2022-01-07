
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PyErr_NoMemory () ;
 int SMALL_STRING ;
 int _rstripw (char*,int) ;
 char* malloc (int) ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static char *
_char_copy_n_strip(char *original, char *temp, int nc)
{
    if (nc > SMALL_STRING) {
        temp = malloc(nc);
        if (!temp) {
            PyErr_NoMemory();
            return ((void*)0);
        }
    }
    memcpy(temp, original, nc);
    _rstripw(temp, nc);
    return temp;
}
