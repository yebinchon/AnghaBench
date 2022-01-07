
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int check ;
typedef int buf ;


 int TEST_false (int) ;
 int TEST_int_eq (size_t,int) ;
 int TEST_int_ge (int,int) ;
 int TEST_int_le (int,int) ;
 int memcmp (unsigned char*,unsigned char*,int) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int memset (unsigned char*,unsigned char,int) ;

__attribute__((used)) static int sanity_check_bytes(size_t (*rng)(unsigned char *, size_t),
    int rounds, int min_failures, int max_retries, int max_zero_words)
{
    int testresult = 0;
    unsigned char prior[31] = {0}, buf[31] = {0}, check[7];
    int failures = 0, zero_words = 0;

    int i;
    for (i = 0; i < rounds; i++) {
        size_t generated = 0;

        int retry;
        for (retry = 0; retry < max_retries; retry++) {
            generated = rng(buf, sizeof(buf));
            if (generated == sizeof(buf))
                break;
            failures++;
        }






        size_t j;
        for (j = 0; j < sizeof(buf) - 1; j++) {
            if (buf[j] == 0 && buf[j+1] == 0) {
                zero_words++;
            }
        }

        if (!TEST_int_eq(generated, sizeof(buf)))
            goto end;
        if (!TEST_false(!memcmp(prior, buf, sizeof(buf))))
            goto end;


        unsigned char *tail = &buf[sizeof(buf) - sizeof(check)];
        memset(check, tail[0], 7);
        if (!TEST_false(!memcmp(check, tail, sizeof(check))))
            goto end;


        memcpy(prior, buf, sizeof(buf));
    }

    if (!TEST_int_le(zero_words, max_zero_words))
        goto end;

    if (!TEST_int_ge(failures, min_failures))
        goto end;

    testresult = 1;
end:
    return testresult;
}
