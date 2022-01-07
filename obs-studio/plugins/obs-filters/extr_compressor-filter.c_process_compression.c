
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct compressor_data {float const slope; float const threshold; size_t num_channels; float output_gain; int * envelope_buf; } ;


 float db_to_mul (int ) ;
 int fminf (int ,float) ;
 float mul_to_db (int ) ;

__attribute__((used)) static inline void process_compression(const struct compressor_data *cd,
           float **samples, uint32_t num_samples)
{
 for (size_t i = 0; i < num_samples; ++i) {
  const float env_db = mul_to_db(cd->envelope_buf[i]);
  float gain = cd->slope * (cd->threshold - env_db);
  gain = db_to_mul(fminf(0, gain));

  for (size_t c = 0; c < cd->num_channels; ++c) {
   if (samples[c]) {
    samples[c][i] *= gain * cd->output_gain;
   }
  }
 }
}
