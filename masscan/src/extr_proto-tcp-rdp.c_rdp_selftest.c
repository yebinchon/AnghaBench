
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int test2 ;
typedef int test1 ;


 scalar_t__ rdp_selftest_item (char const*,int,char*) ;

__attribute__((used)) static int
rdp_selftest(void)
{
    static const char test1[] =
        "\x03\x00\x00\x13"
        "\x0e\xd0\x00\x00\x12\x34\x00\x02\x0f\x08\x00\x02\x00\x00\x00";
    static const char test2[] = "\x03\x00\x00\x13"
        "\x0e\xd0\x00\x00\x12\x34\x00\x03\x00\x08\x00\x05\x00\x00\x00";

    int result = 0;

    result += rdp_selftest_item(test1, sizeof(test1) - 1, "NLA-sup");
    result += rdp_selftest_item(test2, sizeof(test2) - 1, "NLA-unsup");

    return result;
}
