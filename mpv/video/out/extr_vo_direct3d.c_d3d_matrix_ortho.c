
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float _11; float _22; float _33; float _41; float _42; float _44; scalar_t__ _43; } ;
typedef TYPE_1__ D3DMATRIX ;


 int d3d_matrix_identity (TYPE_1__*) ;

__attribute__((used)) static void d3d_matrix_ortho(D3DMATRIX *m, float left, float right,
                             float bottom, float top)
{
    d3d_matrix_identity(m);
    m->_11 = 2.0f / (right - left);
    m->_22 = 2.0f / (top - bottom);
    m->_33 = 1.0f;
    m->_41 = -(right + left) / (right - left);
    m->_42 = -(top + bottom) / (top - bottom);
    m->_43 = 0;
    m->_44 = 1.0f;
}
