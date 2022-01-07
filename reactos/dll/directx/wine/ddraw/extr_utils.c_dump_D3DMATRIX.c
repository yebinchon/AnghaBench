
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int _44; int _43; int _42; int _41; int _34; int _33; int _32; int _31; int _24; int _23; int _22; int _21; int _14; int _13; int _12; int _11; } ;
typedef TYPE_1__ D3DMATRIX ;


 int TRACE (char*,int ,int ,int ,int ) ;

void
dump_D3DMATRIX(const D3DMATRIX *mat)
{
    TRACE("  %f %f %f %f\n", mat->_11, mat->_12, mat->_13, mat->_14);
    TRACE("  %f %f %f %f\n", mat->_21, mat->_22, mat->_23, mat->_24);
    TRACE("  %f %f %f %f\n", mat->_31, mat->_32, mat->_33, mat->_34);
    TRACE("  %f %f %f %f\n", mat->_41, mat->_42, mat->_43, mat->_44);
}
