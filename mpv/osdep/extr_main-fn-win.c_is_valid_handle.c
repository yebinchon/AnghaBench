
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HANDLE ;


 scalar_t__ FILE_TYPE_UNKNOWN ;
 scalar_t__ GetFileType (int *) ;
 int * INVALID_HANDLE_VALUE ;

__attribute__((used)) static bool is_valid_handle(HANDLE h)
{
    return h != INVALID_HANDLE_VALUE && h != ((void*)0) &&
           GetFileType(h) != FILE_TYPE_UNKNOWN;
}
