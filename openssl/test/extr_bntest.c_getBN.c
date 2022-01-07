
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int start; int test_file; } ;
typedef TYPE_1__ STANZA ;
typedef int BIGNUM ;


 int TEST_error (char*,char const*,...) ;
 char* findattr (TYPE_1__*,char const*) ;
 int parseBN (int **,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static BIGNUM *getBN(STANZA *s, const char *attribute)
{
    const char *hex;
    BIGNUM *ret = ((void*)0);

    if ((hex = findattr(s, attribute)) == ((void*)0)) {
        TEST_error("%s:%d: Can't find %s", s->test_file, s->start, attribute);
        return ((void*)0);
    }

    if (parseBN(&ret, hex) != (int)strlen(hex)) {
        TEST_error("Could not decode '%s'", hex);
        return ((void*)0);
    }
    return ret;
}
