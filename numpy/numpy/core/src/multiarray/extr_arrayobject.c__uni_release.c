
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_ucs4 ;


 int SMALL_STRING ;
 int free (char*) ;

__attribute__((used)) static void
_uni_release(char *ptr, int nc)
{
    if (nc*sizeof(npy_ucs4) > SMALL_STRING) {
        free(ptr);
    }
}
