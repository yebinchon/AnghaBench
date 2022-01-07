
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int FILE_ATTRIBUTE_REPARSE_POINT ;
 int INVALID_FILE_ATTRIBUTES ;
 int MP_S_IFDIR ;
 int MP_S_IFREG ;

int dttoif(int d_type) {
    if (d_type == INVALID_FILE_ATTRIBUTES) {
        return 0;
    }



    if (d_type & FILE_ATTRIBUTE_REPARSE_POINT) {
        return 0;
    }
    return (d_type & FILE_ATTRIBUTE_DIRECTORY) ? MP_S_IFDIR : MP_S_IFREG;
}
