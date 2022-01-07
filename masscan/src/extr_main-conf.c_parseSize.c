
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int exit (int) ;
 int fprintf (int ,char*) ;
 scalar_t__ isalpha (char const) ;
 scalar_t__ isdigit (char const) ;
 scalar_t__ ispunct (char const) ;
 scalar_t__ isspace (char const) ;
 int stderr ;
 int tolower (char const) ;

__attribute__((used)) static uint64_t
parseSize(const char *value)
{
    uint64_t num = 0;

    while (isdigit(value[0]&0xFF)) {
        num = num*10 + (value[0] - '0');
        value++;
    }
    while (ispunct(value[0]) || isspace(value[0]))
        value++;

    if (isalpha(value[0]) && num == 0)
        num = 1;

    if (value[0] == '\0')
        return num;

    switch (tolower(value[0])) {
    case 'k':
        num *= 1024ULL;
        break;
    case 'm':
        num *= 1024ULL * 1024ULL;
        break;
    case 'g':
        num *= 1024ULL * 1024ULL * 1024ULL;
        break;
    case 't':
        num *= 1024ULL * 1024ULL * 1024ULL * 1024ULL;
        break;
    case 'p':
        num *= 1024ULL * 1024ULL * 1024ULL * 1024ULL * 1024ULL;
        break;
    case 'e':
        num *= 1024ULL * 1024ULL * 1024ULL * 1024ULL * 1024ULL * 1024ULL;
        break;
    default:
        fprintf(stderr, "--rotate-size: unknown character\n");
        exit(1);
    }
    return num;
}
