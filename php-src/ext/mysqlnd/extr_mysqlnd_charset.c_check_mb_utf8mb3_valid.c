
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int check_mb_utf8mb3_sequence (char const* const,char const* const) ;

__attribute__((used)) static unsigned int check_mb_utf8mb3_valid(const char * const start, const char * const end)
{
 unsigned int len = check_mb_utf8mb3_sequence(start, end);
 return (len > 1)? len:0;
}
