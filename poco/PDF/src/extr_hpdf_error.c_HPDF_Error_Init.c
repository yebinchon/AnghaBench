
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* user_data; } ;
typedef int HPDF_Error_Rec ;
typedef TYPE_1__* HPDF_Error ;


 int HPDF_MemSet (TYPE_1__*,int ,int) ;

void
HPDF_Error_Init (HPDF_Error error,
                  void *user_data)
{
    HPDF_MemSet(error, 0, sizeof(HPDF_Error_Rec));

    error->user_data = user_data;
}
