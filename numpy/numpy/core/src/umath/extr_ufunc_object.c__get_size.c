
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ npy_longlong ;
typedef int npy_intp ;


 scalar_t__ NPY_MAX_INTP ;
 scalar_t__ NPY_MIN_INTP ;
 scalar_t__ NumPyOS_strtoll (char const*,char**,int) ;
 scalar_t__ _is_alpha_underscore (char) ;

__attribute__((used)) static npy_intp
_get_size(const char* str)
{
    char *stop;
    npy_longlong size = NumPyOS_strtoll(str, &stop, 10);

    if (stop == str || _is_alpha_underscore(*stop)) {

        return -1;
    }
    if (size >= NPY_MAX_INTP || size <= NPY_MIN_INTP) {

        return -1;
    }
    return size;
}
