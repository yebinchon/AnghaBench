
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int char_u ;
struct TYPE_2__ {size_t ga_len; scalar_t__ ga_data; } ;


 int NUL ;
 TYPE_1__ io_ga ;
 int old_fn (int *) ;

__attribute__((used)) static void
PythonIO_Flush(void)
{
    if (old_fn != ((void*)0) && io_ga.ga_len > 0)
    {
 ((char_u *)io_ga.ga_data)[io_ga.ga_len] = NUL;
 old_fn((char_u *)io_ga.ga_data);
    }
    io_ga.ga_len = 0;
}
