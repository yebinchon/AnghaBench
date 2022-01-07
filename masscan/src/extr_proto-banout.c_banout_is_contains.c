
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
banout_is_contains(const struct BannerOutput *banout, unsigned proto,
                const char *string)
{
    const unsigned char *string2;
    size_t string_length;
    size_t string2_length;
    size_t i;




    string2 = banout_string(banout, proto);
    if (string2 == ((void*)0))
        return string == ((void*)0);

    if (string == ((void*)0))
        return 0;

    string_length = strlen(string);
    string2_length = banout_string_length(banout, proto);

    if (string_length > string2_length)
        return 0;

    for (i=0; i<string2_length-string_length+1; i++) {
        if (memcmp(string, string2+i, string_length) == 0)
            return 1;
    }
    return 0;
}
