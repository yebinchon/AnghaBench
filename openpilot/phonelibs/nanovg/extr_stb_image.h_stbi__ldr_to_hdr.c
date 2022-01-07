
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float stbi_uc ;


 int STBI_FREE (float*) ;
 int pow (float,int ) ;
 float* stbi__errpf (char*,char*) ;
 int stbi__l2h_gamma ;
 int stbi__l2h_scale ;
 scalar_t__ stbi__malloc (int) ;

__attribute__((used)) static float *stbi__ldr_to_hdr(stbi_uc *data, int x, int y, int comp)
{
   int i,k,n;
   float *output = (float *) stbi__malloc(x * y * comp * sizeof(float));
   if (output == ((void*)0)) { STBI_FREE(data); return stbi__errpf("outofmem", "Out of memory"); }

   if (comp & 1) n = comp; else n = comp-1;
   for (i=0; i < x*y; ++i) {
      for (k=0; k < n; ++k) {
         output[i*comp + k] = (float) (pow(data[i*comp+k]/255.0f, stbi__l2h_gamma) * stbi__l2h_scale);
      }
      if (k < comp) output[i*comp + k] = data[i*comp+k]/255.0f;
   }
   STBI_FREE(data);
   return output;
}
