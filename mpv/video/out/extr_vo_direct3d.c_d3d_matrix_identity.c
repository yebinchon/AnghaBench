
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float _11; float _22; float _33; float _44; } ;
typedef TYPE_1__ D3DMATRIX ;


 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void d3d_matrix_identity(D3DMATRIX *m)
{
    memset(m, 0, sizeof(D3DMATRIX));
    m->_11 = m->_22 = m->_33 = m->_44 = 1.0f;
}
