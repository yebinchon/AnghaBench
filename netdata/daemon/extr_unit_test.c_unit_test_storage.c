
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double calculated_number ;


 int STORAGE_NUMBER_NEGATIVE_MAX_RAW ;
 int STORAGE_NUMBER_POSITIVE_MIN_RAW ;
 int benchmark_storage_number (int,int) ;
 scalar_t__ check_storage_number (double,int) ;
 scalar_t__ check_storage_number_exists () ;
 double unpack_storage_number (int ) ;

int unit_test_storage() {
    if(check_storage_number_exists()) return 0;

    calculated_number storage_number_positive_min = unpack_storage_number(STORAGE_NUMBER_POSITIVE_MIN_RAW);
    calculated_number storage_number_negative_max = unpack_storage_number(STORAGE_NUMBER_NEGATIVE_MAX_RAW);

    calculated_number c, a = 0;
    int i, j, g, r = 0;

    for(g = -1; g <= 1 ; g++) {
        a = 0;

        if(!g) continue;

        for(j = 0; j < 9 ;j++) {
            a += 0.0000001;
            c = a * g;
            for(i = 0; i < 21 ;i++, c *= 10) {
                if(c > 0 && c < storage_number_positive_min) continue;
                if(c < 0 && c > storage_number_negative_max) continue;

                if(check_storage_number(c, 1)) return 1;
            }
        }
    }


    benchmark_storage_number(1000000, 2);
    return r;
}
