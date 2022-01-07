
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const mode_t ;


 int S_IRGRP ;
 int S_IROTH ;
 int S_IRUSR ;

__attribute__((used)) static bool is_world_readable(mode_t mode)
{
    const mode_t world_readable = S_IRUSR | S_IRGRP | S_IROTH;

    return (mode & world_readable) == world_readable;
}
