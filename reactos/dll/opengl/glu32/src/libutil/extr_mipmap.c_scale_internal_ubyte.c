
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float GLubyte ;
typedef int GLint ;


 int floor (float) ;
 int halveImage_ubyte (int,int,int,float const*,float*,int,int,int) ;

__attribute__((used)) static void scale_internal_ubyte(GLint components, GLint widthin,
      GLint heightin, const GLubyte *datain,
      GLint widthout, GLint heightout,
      GLubyte *dataout, GLint element_size,
      GLint ysize, GLint group_size)
{
    float convx;
    float convy;
    float percent;

    float totals[4];
    float area;
    int i,j,k,xindex;

    const char *temp, *temp0;
    const char *temp_index;
    int outindex;

    int lowx_int, highx_int, lowy_int, highy_int;
    float x_percent, y_percent;
    float lowx_float, highx_float, lowy_float, highy_float;
    float convy_float, convx_float;
    int convy_int, convx_int;
    int l, m;
    const char *left, *right;

    if (widthin == widthout*2 && heightin == heightout*2) {
 halveImage_ubyte(components, widthin, heightin,
 (const GLubyte *)datain, (GLubyte *)dataout,
 element_size, ysize, group_size);
 return;
    }
    convy = (float) heightin/heightout;
    convx = (float) widthin/widthout;
    convy_int = floor(convy);
    convy_float = convy - convy_int;
    convx_int = floor(convx);
    convx_float = convx - convx_int;

    area = convx * convy;

    lowy_int = 0;
    lowy_float = 0;
    highy_int = convy_int;
    highy_float = convy_float;

    for (i = 0; i < heightout; i++) {

        if (highy_int >= heightin)
            highy_int = heightin - 1;
 lowx_int = 0;
 lowx_float = 0;
 highx_int = convx_int;
 highx_float = convx_float;

 for (j = 0; j < widthout; j++) {






     totals[0] = totals[1] = totals[2] = totals[3] = 0.0;


     xindex = lowx_int*group_size;
     if((highy_int>lowy_int) && (highx_int>lowx_int)) {

  y_percent = 1-lowy_float;
  temp = (const char *)datain + xindex + lowy_int * ysize;
  percent = y_percent * (1-lowx_float);
  for (k = 0, temp_index = temp; k < components;
       k++, temp_index += element_size) {
   totals[k] += (GLubyte)(*(temp_index)) * percent;
  }
  left = temp;
  for(l = lowx_int+1; l < highx_int; l++) {
      temp += group_size;
      for (k = 0, temp_index = temp; k < components;
    k++, temp_index += element_size) {
   totals[k] += (GLubyte)(*(temp_index)) * y_percent;
      }
  }
  temp += group_size;
  right = temp;
  percent = y_percent * highx_float;
  for (k = 0, temp_index = temp; k < components;
       k++, temp_index += element_size) {
   totals[k] += (GLubyte)(*(temp_index)) * percent;
  }


  y_percent = highy_float;
  percent = y_percent * (1-lowx_float);
  temp = (const char *)datain + xindex + highy_int * ysize;
  for (k = 0, temp_index = temp; k < components;
       k++, temp_index += element_size) {
   totals[k] += (GLubyte)(*(temp_index)) * percent;
  }
  for(l = lowx_int+1; l < highx_int; l++) {
      temp += group_size;
      for (k = 0, temp_index = temp; k < components;
    k++, temp_index += element_size) {
   totals[k] += (GLubyte)(*(temp_index)) * y_percent;
      }
  }
  temp += group_size;
  percent = y_percent * highx_float;
  for (k = 0, temp_index = temp; k < components;
       k++, temp_index += element_size) {
   totals[k] += (GLubyte)(*(temp_index)) * percent;
  }



  for(m = lowy_int+1; m < highy_int; m++) {
      left += ysize;
      right += ysize;
      for (k = 0; k < components;
    k++, left += element_size, right += element_size) {
   totals[k] += (GLubyte)(*(left))*(1-lowx_float)
    +(GLubyte)(*(right))*highx_float;
      }
  }
     } else if (highy_int > lowy_int) {
  x_percent = highx_float - lowx_float;
  percent = (1-lowy_float)*x_percent;
  temp = (const char *)datain + xindex + lowy_int*ysize;
  for (k = 0, temp_index = temp; k < components;
       k++, temp_index += element_size) {
   totals[k] += (GLubyte)(*(temp_index)) * percent;
  }
  for(m = lowy_int+1; m < highy_int; m++) {
      temp += ysize;
      for (k = 0, temp_index = temp; k < components;
    k++, temp_index += element_size) {
   totals[k] += (GLubyte)(*(temp_index)) * x_percent;
      }
  }
  percent = x_percent * highy_float;
  temp += ysize;
  for (k = 0, temp_index = temp; k < components;
       k++, temp_index += element_size) {
   totals[k] += (GLubyte)(*(temp_index)) * percent;
  }
     } else if (highx_int > lowx_int) {
  y_percent = highy_float - lowy_float;
  percent = (1-lowx_float)*y_percent;
  temp = (const char *)datain + xindex + lowy_int*ysize;
  for (k = 0, temp_index = temp; k < components;
       k++, temp_index += element_size) {
   totals[k] += (GLubyte)(*(temp_index)) * percent;
  }
  for (l = lowx_int+1; l < highx_int; l++) {
      temp += group_size;
      for (k = 0, temp_index = temp; k < components;
    k++, temp_index += element_size) {
   totals[k] += (GLubyte)(*(temp_index)) * y_percent;
      }
  }
  temp += group_size;
  percent = y_percent * highx_float;
  for (k = 0, temp_index = temp; k < components;
       k++, temp_index += element_size) {
   totals[k] += (GLubyte)(*(temp_index)) * percent;
  }
     } else {
  percent = (highy_float-lowy_float)*(highx_float-lowx_float);
  temp = (const char *)datain + xindex + lowy_int * ysize;
  for (k = 0, temp_index = temp; k < components;
       k++, temp_index += element_size) {
   totals[k] += (GLubyte)(*(temp_index)) * percent;
  }
     }




     temp0 = (const char *)datain + xindex + group_size +
   (lowy_int+1)*ysize;
     for (m = lowy_int+1; m < highy_int; m++) {
  temp = temp0;
  for(l = lowx_int+1; l < highx_int; l++) {
      for (k = 0, temp_index = temp; k < components;
    k++, temp_index += element_size) {
   totals[k] += (GLubyte)(*(temp_index));
      }
      temp += group_size;
  }
  temp0 += ysize;
     }

     outindex = (j + (i * widthout)) * components;
     for (k = 0; k < components; k++) {
  dataout[outindex + k] = totals[k]/area;

     }
     lowx_int = highx_int;
     lowx_float = highx_float;
     highx_int += convx_int;
     highx_float += convx_float;
     if(highx_float > 1) {
  highx_float -= 1.0;
  highx_int++;
     }
 }
 lowy_int = highy_int;
 lowy_float = highy_float;
 highy_int += convy_int;
 highy_float += convy_float;
 if(highy_float > 1) {
     highy_float -= 1.0;
     highy_int++;
 }
    }
}
