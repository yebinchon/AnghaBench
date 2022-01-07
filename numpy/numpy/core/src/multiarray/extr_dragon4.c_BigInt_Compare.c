
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ npy_int32 ;
struct TYPE_4__ {scalar_t__ length; scalar_t__* blocks; } ;
typedef TYPE_1__ BigInt ;



__attribute__((used)) static npy_int32
BigInt_Compare(const BigInt *lhs, const BigInt *rhs)
{
    int i;


    npy_int32 lengthDiff = lhs->length - rhs->length;
    if (lengthDiff != 0) {
        return lengthDiff;
    }


    for (i = lhs->length - 1; i >= 0; --i) {
        if (lhs->blocks[i] == rhs->blocks[i]) {
            continue;
        }
        else if (lhs->blocks[i] > rhs->blocks[i]) {
            return 1;
        }
        else {
            return -1;
        }
    }


    return 0;
}
