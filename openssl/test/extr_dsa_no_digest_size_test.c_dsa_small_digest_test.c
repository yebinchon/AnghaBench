
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ sign_and_verify (int) ;

__attribute__((used)) static int dsa_small_digest_test(void) {
    return sign_and_verify(16) && sign_and_verify(1);
}
