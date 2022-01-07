
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int npy_uint32 ;
typedef int npy_int32 ;
typedef int npy_bool ;
struct TYPE_3__ {int digits_right; int digits_left; int trim_mode; int precision; int cutoff_mode; int digit_mode; int exp_digits; scalar_t__ scientific; } ;
typedef TYPE_1__ Dragon4_Options ;
typedef int BigInt ;


 int FormatPositional (char*,int ,int *,int ,char,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int FormatScientific (char*,int ,int *,int ,char,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static npy_uint32
Format_floatbits(char *buffer, npy_uint32 bufferSize, BigInt *mantissa,
                 npy_int32 exponent, char signbit, npy_uint32 mantissaBit,
                 npy_bool hasUnequalMargins, Dragon4_Options *opt)
{

    if (opt->scientific) {
        return FormatScientific(buffer, bufferSize, mantissa, exponent,
                                signbit, mantissaBit, hasUnequalMargins,
                                opt->digit_mode, opt->precision,
                                opt->trim_mode, opt->digits_left,
                                opt->exp_digits);
    }
    else {
        return FormatPositional(buffer, bufferSize, mantissa, exponent,
                                signbit, mantissaBit, hasUnequalMargins,
                                opt->digit_mode, opt->cutoff_mode,
                                opt->precision, opt->trim_mode,
                                opt->digits_left, opt->digits_right);
    }
}
