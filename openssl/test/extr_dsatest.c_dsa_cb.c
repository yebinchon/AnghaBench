
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_GENCB ;


 int TEST_error (char*) ;

__attribute__((used)) static int dsa_cb(int p, int n, BN_GENCB *arg)
{
    static int ok = 0, num = 0;

    if (p == 0)
        num++;
    if (p == 2)
        ok++;

    if (!ok && (p == 0) && (num > 1)) {
        TEST_error("dsa_cb error");
        return 0;
    }
    return 1;
}
