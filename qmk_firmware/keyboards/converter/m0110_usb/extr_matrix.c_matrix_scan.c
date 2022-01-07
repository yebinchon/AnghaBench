
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ M0110_ERROR ;
 scalar_t__ M0110_NULL ;
 scalar_t__ debug_enable ;
 int is_modified ;
 scalar_t__ m0110_recv_key () ;
 int matrix_scan_quantum () ;
 int phex (scalar_t__) ;
 int print (char*) ;
 int register_key (scalar_t__) ;

uint8_t matrix_scan(void)
{
    uint8_t key;

    is_modified = 0;
    key = m0110_recv_key();

    if (key == M0110_NULL) {
        return 0;
    } else if (key == M0110_ERROR) {
        return 0;
    } else {
        is_modified = 1;
        register_key(key);
    }

    if (debug_enable) {
        print("["); phex(key); print("]\n");
    }

    matrix_scan_quantum();
    return 1;
}
