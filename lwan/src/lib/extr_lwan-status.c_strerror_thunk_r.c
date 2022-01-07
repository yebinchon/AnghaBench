
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strerror_r (int,char*,size_t) ;

__attribute__((used)) static inline char *strerror_thunk_r(int error_number, char *buffer, size_t len)
{



    if (!strerror_r(error_number, buffer, len))
        return buffer;
    return "Unknown";

}
