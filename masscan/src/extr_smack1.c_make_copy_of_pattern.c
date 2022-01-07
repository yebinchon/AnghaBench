
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ malloc (unsigned int) ;
 int memcpy (unsigned char*,unsigned char const*,unsigned int) ;
 int stderr ;
 scalar_t__ tolower (unsigned char const) ;

__attribute__((used)) static unsigned char *
make_copy_of_pattern( const unsigned char *pattern,
                        unsigned pattern_length,
                        unsigned is_nocase)
{
    unsigned char *result;


    result = (unsigned char *)malloc(pattern_length+1);
    if (result == ((void*)0)) {
        fprintf(stderr, "%s: out of memory error\n", "smack");
        exit(1);
    }


    if (is_nocase) {
        unsigned i;
        for (i=0; i<pattern_length; i++) {
            result[i] = (unsigned char)(tolower(pattern[i]));
        }
    } else
        memcpy(result, pattern, pattern_length);




    result[pattern_length] = '\0';

    return result;
}
