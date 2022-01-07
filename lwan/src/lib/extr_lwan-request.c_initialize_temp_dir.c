
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_temp_dir () ;
 int temp_dir ;

__attribute__((used)) __attribute__((constructor)) static void initialize_temp_dir(void)
{
    temp_dir = get_temp_dir();
}
