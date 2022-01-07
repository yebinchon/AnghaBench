
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_bool ;



__attribute__((used)) static npy_bool
string_is_fully_read(char const* start, char const* end) {
    if (end == ((void*)0)) {
        return *start == '\0';
    }
    else {
        return start >= end;
    }
}
