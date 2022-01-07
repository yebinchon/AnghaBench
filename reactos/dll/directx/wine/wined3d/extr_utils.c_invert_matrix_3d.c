
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_matrix {float _11; float _22; float _33; float _21; float _32; float _13; float _31; float _12; float _23; } ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 float fabsf (float) ;

BOOL invert_matrix_3d(struct wined3d_matrix *out, const struct wined3d_matrix *in)
{
    float pos, neg, t, det;
    struct wined3d_matrix temp;



    pos = neg = 0.0f;
    t = in->_11 * in->_22 * in->_33;
    if (t >= 0.0f)
        pos += t;
    else
        neg += t;

    t = in->_21 * in->_32 * in->_13;
    if (t >= 0.0f)
        pos += t;
    else
        neg += t;
    t = in->_31 * in->_12 * in->_23;
    if (t >= 0.0f)
        pos += t;
    else
        neg += t;

    t = -in->_31 * in->_22 * in->_13;
    if (t >= 0.0f)
        pos += t;
    else
        neg += t;
    t = -in->_21 * in->_12 * in->_33;
    if (t >= 0.0f)
        pos += t;
    else
        neg += t;

    t = -in->_11 * in->_32 * in->_23;
    if (t >= 0.0f)
        pos += t;
    else
        neg += t;

    det = pos + neg;

    if (fabsf(det) < 1e-25f)
        return FALSE;

    det = 1.0f / det;
    temp._11 = (in->_22 * in->_33 - in->_32 * in->_23) * det;
    temp._12 = -(in->_12 * in->_33 - in->_32 * in->_13) * det;
    temp._13 = (in->_12 * in->_23 - in->_22 * in->_13) * det;
    temp._21 = -(in->_21 * in->_33 - in->_31 * in->_23) * det;
    temp._22 = (in->_11 * in->_33 - in->_31 * in->_13) * det;
    temp._23 = -(in->_11 * in->_23 - in->_21 * in->_13) * det;
    temp._31 = (in->_21 * in->_32 - in->_31 * in->_22) * det;
    temp._32 = -(in->_11 * in->_32 - in->_31 * in->_12) * det;
    temp._33 = (in->_11 * in->_22 - in->_21 * in->_12) * det;

    *out = temp;
    return TRUE;
}
