
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLuint ;
typedef double GLfloat ;


 int horner_bezier_curve (double*,double*,double,int,int) ;

__attribute__((used)) static void
horner_bezier_surf(GLfloat *cn, GLfloat *out, GLfloat u, GLfloat v,
                   GLuint dim, GLuint uorder, GLuint vorder)
{
  GLfloat *cp = cn + uorder*vorder*dim;
  GLuint i, uinc = vorder*dim;

  if(vorder > uorder)
  {
    if(uorder >= 2)
    {
      GLfloat s, poweru;
      GLuint j, k, bincoeff;


      for(j=0; j<vorder; j++)
      {
        GLfloat *ucp = &cn[j*dim];



 bincoeff = uorder-1;
 s = 1.0-u;

 for(k=0; k<dim; k++)
   cp[j*dim+k] = s*ucp[k] + bincoeff*u*ucp[uinc+k];

 for(i=2, ucp+=2*uinc, poweru=u*u; i<uorder;
            i++, poweru*=u, ucp +=uinc)
 {
   bincoeff *= uorder-i;
          bincoeff /= i;

   for(k=0; k<dim; k++)
     cp[j*dim+k] = s*cp[j*dim+k] + bincoeff*poweru*ucp[k];
 }
      }


      horner_bezier_curve(cp, out, v, dim, vorder);
    }
    else
      horner_bezier_curve(cn, out, v, dim, vorder);
  }
  else
  {
    if(vorder > 1)
    {
      GLuint i;


      for(i=0; i<uorder; i++, cn += uinc)
      {




 horner_bezier_curve(cn, &cp[i*dim], v, dim, vorder);
      }


      horner_bezier_curve(cp, out, u, dim, uorder);
    }
    else
      horner_bezier_curve(cn, out, u, dim, uorder);
  }
}
