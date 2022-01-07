
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_2__ {scalar_t__ next; scalar_t__ filesize; } ;
struct Output {TYPE_1__ rotate; scalar_t__ is_virgin_file; } ;
typedef scalar_t__ int64_t ;
typedef int FILE ;


 scalar_t__ ftell_x (int *) ;

__attribute__((used)) static int
is_rotate_time(const struct Output *out, time_t now, FILE *fp)
{
    if (out->is_virgin_file)
        return 0;
    if (now >= out->rotate.next)
        return 1;
    if (out->rotate.filesize != 0 &&
        ftell_x(fp) >= (int64_t)out->rotate.filesize)
        return 1;
    return 0;
}
