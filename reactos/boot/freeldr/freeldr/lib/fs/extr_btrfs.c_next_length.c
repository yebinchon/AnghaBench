
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BTRFS_NAME_MAX ;

__attribute__((used)) static inline int next_length(const char *path)
{
    int res = 0;
    while (*path != '\0' && *path != '/' && *path != '\\' && res <= BTRFS_NAME_MAX)
        ++res, ++path;
    return res;
}
