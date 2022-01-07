
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __m128 ;


 int _mm_load_ps (float const*) ;
 int _mm_max_ps (int ,int ) ;
 int abs_ps (int ) ;
 int hmax_ps (float,int ) ;

__attribute__((used)) static float get_sample_peak(__m128 previous_samples, const float *samples,
        size_t nr_samples)
{
 __m128 peak = previous_samples;
 for (size_t i = 0; (i + 3) < nr_samples; i += 4) {
  __m128 new_work = _mm_load_ps(&samples[i]);
  peak = _mm_max_ps(peak, abs_ps(new_work));
 }

 float r;
 hmax_ps(r, peak);
 return r;
}
