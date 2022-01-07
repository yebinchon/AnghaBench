
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int php_info_print_table_row (int,char const* const,char const* const,char const* const) ;

__attribute__((used)) static void __enumerate_providers_fn (const char * const name,
                        const char * const desc,
                        const char * const file,
                        void * ud)
{
 php_info_print_table_row(3, name, desc, file);
}
