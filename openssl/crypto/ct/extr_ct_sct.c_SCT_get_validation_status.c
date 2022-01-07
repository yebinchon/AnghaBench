
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sct_validation_status_t ;
struct TYPE_3__ {int validation_status; } ;
typedef TYPE_1__ SCT ;



sct_validation_status_t SCT_get_validation_status(const SCT *sct)
{
    return sct->validation_status;
}
