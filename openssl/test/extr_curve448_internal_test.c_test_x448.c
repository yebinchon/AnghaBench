
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u ;
typedef int out ;
typedef int k ;


 int TEST_info (char*,unsigned int) ;
 int TEST_int_eq (int ,int ) ;
 int TEST_true (int ) ;
 int X448 (int *,int *,int *) ;
 int fflush (int ) ;
 int * in_scalar1 ;
 int * in_scalar2 ;
 int * in_u1 ;
 int * in_u2 ;
 int * in_u3 ;
 unsigned int max ;
 int memcmp (int *,int ,int) ;
 int memcpy (int *,int *,int) ;
 int out_u1 ;
 int out_u2 ;
 int * out_u3 ;
 int printf (char*) ;
 int stdout ;
 scalar_t__ verbose ;

__attribute__((used)) static int test_x448(void)
{
    uint8_t u[56], k[56], out[56];
    unsigned int i;
    int j = -1;



    if (!TEST_true(X448(out, in_scalar1, in_u1))
          || !TEST_int_eq(memcmp(out, out_u1, sizeof(out)), 0)
          || !TEST_true(X448(out, in_scalar2, in_u2))
          || !TEST_int_eq(memcmp(out, out_u2, sizeof(out)), 0))
        return 0;

    memcpy(u, in_u3, sizeof(u));
    memcpy(k, in_u3, sizeof(k));
    for (i = 1; i <= max; i++) {
        if (verbose && i % 10000 == 0) {
            printf(".");
            fflush(stdout);
        }

        if (!TEST_true(X448(out, k, u)))
            return 0;

        if (i == 1 || i == 1000 || i == 1000000) {
            j++;
            if (!TEST_int_eq(memcmp(out, out_u3[j], sizeof(out)), 0)) {
                TEST_info("Failed at iteration %d", i);
                return 0;
            }
        }
        memcpy(u, k, sizeof(u));
        memcpy(k, out, sizeof(k));
    }

    return 1;
}
