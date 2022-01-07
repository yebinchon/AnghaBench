
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CoapLink {size_t link_length; int link_offset; } ;


 int fprintf (int ,char*,int) ;
 scalar_t__ memcmp (char const*,char const*,size_t) ;
 int stderr ;
 size_t strlen (char const*) ;

__attribute__((used)) static int
test_is_link(const char *name, const unsigned char *vinput, struct CoapLink *links, size_t count, int line_number)
{
    size_t i;
    size_t name_length = strlen(name);
    const char *input = (const char *)vinput;

    for (i=0; i<count; i++) {
        const char *name2;
        if (name_length != links[i].link_length)
            continue;
        name2 = input + links[i].link_offset;
        if (memcmp(name2, name, name_length) != 0)
            continue;
        return 1;
    }

    fprintf(stderr, "[-] proto-coap failed at line number %d\n", line_number);
    return 0;
}
