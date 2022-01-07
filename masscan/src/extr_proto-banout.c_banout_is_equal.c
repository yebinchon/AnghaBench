
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct BannerOutput {int dummy; } ;


 unsigned char* banout_string (struct BannerOutput const*,unsigned int) ;
 size_t banout_string_length (struct BannerOutput const*,unsigned int) ;
 scalar_t__ memcmp (char const*,unsigned char const*,size_t) ;
 size_t strlen (char const*) ;

unsigned
banout_is_equal(const struct BannerOutput *banout, unsigned proto,
                const char *string)
{
    const unsigned char *string2;
    size_t string_length;
    size_t string2_length;




    string2 = banout_string(banout, proto);
    if (string2 == ((void*)0))
        return string == ((void*)0);

    if (string == ((void*)0))
        return 0;

    string_length = strlen(string);
    string2_length = banout_string_length(banout, proto);

    if (string_length != string2_length)
        return 0;

    return memcmp(string, string2, string2_length) == 0;
}
