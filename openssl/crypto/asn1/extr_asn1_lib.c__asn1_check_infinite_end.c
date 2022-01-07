
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int _asn1_check_infinite_end(const unsigned char **p, long len)
{



    if (len <= 0)
        return 1;
    else if ((len >= 2) && ((*p)[0] == 0) && ((*p)[1] == 0)) {
        (*p) += 2;
        return 1;
    }
    return 0;
}
