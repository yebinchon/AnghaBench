
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int GET_FLOAT_WORD (int,float) ;
 float L1 ;
 float L2 ;
 float L3 ;
 float L4 ;
 float L5 ;
 float L6 ;
 float P1 ;
 float P2 ;
 float P3 ;
 float P4 ;
 float P5 ;
 int SET_FLOAT_WORD (float,int) ;
 float* bp ;
 float cp ;
 float cp_h ;
 float cp_l ;
 float* dp_h ;
 float* dp_l ;
 float fabsf (float) ;
 float huge ;
 float ivln2 ;
 float ivln2_h ;
 float ivln2_l ;
 float lg2 ;
 float lg2_h ;
 float lg2_l ;
 float ovt ;
 float scalbnf (float,int) ;
 float sqrtf (float) ;
 float tiny ;
 float two24 ;

float powf(float x, float y)
{
 float z,ax,z_h,z_l,p_h,p_l;
 float y1,t1,t2,r,s,sn,t,u,v,w;
 int32_t i,j,k,yisint,n;
 int32_t hx,hy,ix,iy,is;

 GET_FLOAT_WORD(hx, x);
 GET_FLOAT_WORD(hy, y);
 ix = hx & 0x7fffffff;
 iy = hy & 0x7fffffff;


 if (iy == 0)
  return 1.0f;

 if (hx == 0x3f800000)
  return 1.0f;

 if (ix > 0x7f800000 || iy > 0x7f800000)
  return x + y;






 yisint = 0;
 if (hx < 0) {
  if (iy >= 0x4b800000)
   yisint = 2;
  else if (iy >= 0x3f800000) {
   k = (iy>>23) - 0x7f;
   j = iy>>(23-k);
   if ((j<<(23-k)) == iy)
    yisint = 2 - (j & 1);
  }
 }


 if (iy == 0x7f800000) {
  if (ix == 0x3f800000)
   return 1.0f;
  else if (ix > 0x3f800000)
   return hy >= 0 ? y : 0.0f;
  else if (ix != 0)
   return hy >= 0 ? 0.0f: -y;
 }
 if (iy == 0x3f800000)
  return hy >= 0 ? x : 1.0f/x;
 if (hy == 0x40000000)
  return x*x;
 if (hy == 0x3f000000) {
  if (hx >= 0)
   return sqrtf(x);
 }

 ax = fabsf(x);

 if (ix == 0x7f800000 || ix == 0 || ix == 0x3f800000) {
  z = ax;
  if (hy < 0)
   z = 1.0f/z;
  if (hx < 0) {
   if (((ix-0x3f800000)|yisint) == 0) {
    z = (z-z)/(z-z);
   } else if (yisint == 1)
    z = -z;
  }
  return z;
 }

 sn = 1.0f;
 if (hx < 0) {
  if (yisint == 0)
   return (x-x)/(x-x);
  if (yisint == 1)
   sn = -1.0f;
 }


 if (iy > 0x4d000000) {

  if (ix < 0x3f7ffff8)
   return hy < 0 ? sn*huge*huge : sn*tiny*tiny;
  if (ix > 0x3f800007)
   return hy > 0 ? sn*huge*huge : sn*tiny*tiny;


  t = ax - 1;
  w = (t*t)*(0.5f - t*(0.333333333333f - t*0.25f));
  u = ivln2_h*t;
  v = t*ivln2_l - w*ivln2;
  t1 = u + v;
  GET_FLOAT_WORD(is, t1);
  SET_FLOAT_WORD(t1, is & 0xfffff000);
  t2 = v - (t1-u);
 } else {
  float s2,s_h,s_l,t_h,t_l;
  n = 0;

  if (ix < 0x00800000) {
   ax *= two24;
   n -= 24;
   GET_FLOAT_WORD(ix, ax);
  }
  n += ((ix)>>23) - 0x7f;
  j = ix & 0x007fffff;

  ix = j | 0x3f800000;
  if (j <= 0x1cc471)
   k = 0;
  else if (j < 0x5db3d7)
   k = 1;
  else {
   k = 0;
   n += 1;
   ix -= 0x00800000;
  }
  SET_FLOAT_WORD(ax, ix);


  u = ax - bp[k];
  v = 1.0f/(ax+bp[k]);
  s = u*v;
  s_h = s;
  GET_FLOAT_WORD(is, s_h);
  SET_FLOAT_WORD(s_h, is & 0xfffff000);

  is = ((ix>>1) & 0xfffff000) | 0x20000000;
  SET_FLOAT_WORD(t_h, is + 0x00400000 + (k<<21));
  t_l = ax - (t_h - bp[k]);
  s_l = v*((u - s_h*t_h) - s_h*t_l);

  s2 = s*s;
  r = s2*s2*(L1+s2*(L2+s2*(L3+s2*(L4+s2*(L5+s2*L6)))));
  r += s_l*(s_h+s);
  s2 = s_h*s_h;
  t_h = 3.0f + s2 + r;
  GET_FLOAT_WORD(is, t_h);
  SET_FLOAT_WORD(t_h, is & 0xfffff000);
  t_l = r - ((t_h - 3.0f) - s2);

  u = s_h*t_h;
  v = s_l*t_h + t_l*s;

  p_h = u + v;
  GET_FLOAT_WORD(is, p_h);
  SET_FLOAT_WORD(p_h, is & 0xfffff000);
  p_l = v - (p_h - u);
  z_h = cp_h*p_h;
  z_l = cp_l*p_h + p_l*cp+dp_l[k];

  t = (float)n;
  t1 = (((z_h + z_l) + dp_h[k]) + t);
  GET_FLOAT_WORD(is, t1);
  SET_FLOAT_WORD(t1, is & 0xfffff000);
  t2 = z_l - (((t1 - t) - dp_h[k]) - z_h);
 }


 GET_FLOAT_WORD(is, y);
 SET_FLOAT_WORD(y1, is & 0xfffff000);
 p_l = (y-y1)*t1 + y*t2;
 p_h = y1*t1;
 z = p_l + p_h;
 GET_FLOAT_WORD(j, z);
 if (j > 0x43000000)
  return sn*huge*huge;
 else if (j == 0x43000000) {
  if (p_l + ovt > z - p_h)
   return sn*huge*huge;
 } else if ((j&0x7fffffff) > 0x43160000)
  return sn*tiny*tiny;
 else if (j == 0xc3160000) {
  if (p_l <= z-p_h)
   return sn*tiny*tiny;
 }



 i = j & 0x7fffffff;
 k = (i>>23) - 0x7f;
 n = 0;
 if (i > 0x3f000000) {
  n = j + (0x00800000>>(k+1));
  k = ((n&0x7fffffff)>>23) - 0x7f;
  SET_FLOAT_WORD(t, n & ~(0x007fffff>>k));
  n = ((n&0x007fffff)|0x00800000)>>(23-k);
  if (j < 0)
   n = -n;
  p_h -= t;
 }
 t = p_l + p_h;
 GET_FLOAT_WORD(is, t);
 SET_FLOAT_WORD(t, is & 0xffff8000);
 u = t*lg2_h;
 v = (p_l-(t-p_h))*lg2 + t*lg2_l;
 z = u + v;
 w = v - (z - u);
 t = z*z;
 t1 = z - t*(P1+t*(P2+t*(P3+t*(P4+t*P5))));
 r = (z*t1)/(t1-2.0f) - (w+z*w);
 z = 1.0f - (r - z);
 GET_FLOAT_WORD(j, z);
 j += n<<23;
 if ((j>>23) <= 0)
  z = scalbnf(z, n);
 else
  SET_FLOAT_WORD(z, j);
 return sn*z;
}
