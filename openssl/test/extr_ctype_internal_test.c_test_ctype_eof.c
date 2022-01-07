
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int test_ctype_chars (int ) ;

__attribute__((used)) static int test_ctype_eof(void)
{
    return test_ctype_chars(EOF);
}
