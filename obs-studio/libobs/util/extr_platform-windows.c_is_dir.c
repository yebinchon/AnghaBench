
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwFileAttributes; } ;
typedef TYPE_1__ WIN32_FIND_DATA ;


 int FILE_ATTRIBUTE_DIRECTORY ;

__attribute__((used)) static inline bool is_dir(WIN32_FIND_DATA *wfd)
{
 return !!(wfd->dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY);
}
