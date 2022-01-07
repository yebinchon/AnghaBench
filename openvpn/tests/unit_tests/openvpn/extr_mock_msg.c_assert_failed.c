
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int mock_assert (int,char const*,char const*,int) ;

void
assert_failed(const char *filename, int line, const char *condition)
{
    mock_assert(0, condition ? condition : "", filename, line);

    exit(1);
}
