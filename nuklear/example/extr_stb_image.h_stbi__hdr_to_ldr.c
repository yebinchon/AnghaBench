
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ stbi_uc ;


 int STBI_FREE (float*) ;
 scalar_t__ pow (float,int ) ;
 scalar_t__* stbi__errpuc (char*,char*) ;
 scalar_t__ stbi__float2int (float) ;
 int stbi__h2l_gamma_i ;
 float stbi__h2l_scale_i ;
 scalar_t__ stbi__malloc (int) ;

__attribute__((used)) static stbi_uc *stbi__hdr_to_ldr(float *data, int x, int y, int comp)
{
   int i,k,n;
   stbi_uc *output = (stbi_uc *) stbi__malloc(x * y * comp);
   if (output == ((void*)0)) { STBI_FREE(data); return stbi__errpuc("outofmem", "Out of memory"); }

   if (comp & 1) n = comp; else n = comp-1;
   for (i=0; i < x*y; ++i) {
      for (k=0; k < n; ++k) {
         float z = (float) pow(data[i*comp+k]*stbi__h2l_scale_i, stbi__h2l_gamma_i) * 255 + 0.5f;
         if (z < 0) z = 0;
         if (z > 255) z = 255;
         output[i*comp + k] = (stbi_uc) stbi__float2int(z);
      }
      if (k < comp) {
         float z = data[i*comp+k] * 255 + 0.5f;
         if (z < 0) z = 0;
         if (z > 255) z = 255;
         output[i*comp + k] = (stbi_uc) stbi__float2int(z);
      }
   }
   STBI_FREE(data);
   return output;
}
