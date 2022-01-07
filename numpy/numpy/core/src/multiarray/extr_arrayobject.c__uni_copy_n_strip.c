
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_ucs4 ;


 int PyErr_NoMemory () ;
 int SMALL_STRING ;
 int _unistripw (int *,int) ;
 char* malloc (int) ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static char *
_uni_copy_n_strip(char *original, char *temp, int nc)
{
    if (nc*sizeof(npy_ucs4) > SMALL_STRING) {
        temp = malloc(nc*sizeof(npy_ucs4));
        if (!temp) {
            PyErr_NoMemory();
            return ((void*)0);
        }
    }
    memcpy(temp, original, nc*sizeof(npy_ucs4));
    _unistripw((npy_ucs4 *)temp, nc);
    return temp;
}
