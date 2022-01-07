
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ jsonsl_error_t ;


 scalar_t__ JSONSL_ERROR_SUCCESS ;
 int JSONSL_XERR ;

const char* jsonsl_strerror(jsonsl_error_t err)
{
    if (err == JSONSL_ERROR_SUCCESS) {
        return "SUCCESS";
    }



    JSONSL_XERR;

    return "<UNKNOWN_ERROR>";
}
