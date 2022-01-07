
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gdInterpolationMethod ;
typedef TYPE_1__* gdImagePtr ;
struct TYPE_3__ {int interpolation_id; int * interpolation; } ;
 int GD_METHOD_COUNT ;







 int * filter_bell ;
 int * filter_bessel ;
 int * filter_bicubic ;
 int * filter_blackman ;
 int * filter_box ;
 int * filter_bspline ;
 int * filter_catmullrom ;
 int * filter_gaussian ;
 int * filter_generalized_cubic ;
 int * filter_hamming ;
 int * filter_hanning ;
 int * filter_hermite ;
 int * filter_mitchell ;
 int * filter_power ;
 int * filter_quadratic ;
 int * filter_sinc ;
 int * filter_triangle ;

int gdImageSetInterpolationMethod(gdImagePtr im, gdInterpolationMethod id)
{
 if (im == ((void*)0) || id < 0 || id > GD_METHOD_COUNT) {
  return 0;
 }

 switch (id) {
  case 140:
   id = 145;

  case 145:
  case 146:
  case 133:
  case 128:
   im->interpolation = ((void*)0);
   break;


  case 149:
   im->interpolation = filter_bell;
   break;
  case 148:
   im->interpolation = filter_bessel;
   break;
  case 147:
   im->interpolation = filter_bicubic;
   break;
  case 144:
   im->interpolation = filter_blackman;
   break;
  case 143:
   im->interpolation = filter_box;
   break;
  case 142:
   im->interpolation = filter_bspline;
   break;
  case 141:
   im->interpolation = filter_catmullrom;
   break;
  case 139:
   im->interpolation = filter_gaussian;
   break;
  case 138:
   im->interpolation = filter_generalized_cubic;
   break;
  case 135:
   im->interpolation = filter_hermite;
   break;
  case 137:
   im->interpolation = filter_hamming;
   break;
  case 136:
   im->interpolation = filter_hanning;
   break;
  case 134:
   im->interpolation = filter_mitchell;
   break;
  case 132:
   im->interpolation = filter_power;
   break;
  case 131:
   im->interpolation = filter_quadratic;
   break;
  case 130:
   im->interpolation = filter_sinc;
   break;
  case 129:
   im->interpolation = filter_triangle;
   break;

  default:
   return 0;
   break;
 }
 im->interpolation_id = id;
 return 1;
}
