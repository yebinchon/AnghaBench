
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 char* talloc_asprintf (int *,char*,double) ;

char *format_file_size(int64_t size)
{
    double s = size;
    if (size < 1024)
        return talloc_asprintf(((void*)0), "%.0f B", s);

    if (size < (1024 * 1024))
        return talloc_asprintf(((void*)0), "%.3f KiB", s / (1024.0));

    if (size < (1024 * 1024 * 1024))
        return talloc_asprintf(((void*)0), "%.3f MiB", s / (1024.0 * 1024.0));

    if (size < (1024LL * 1024LL * 1024LL * 1024LL))
        return talloc_asprintf(((void*)0), "%.3f GiB", s / (1024.0 * 1024.0 * 1024.0));

    return talloc_asprintf(((void*)0), "%.3f TiB", s / (1024.0 * 1024.0 * 1024.0 * 1024.0));
}
