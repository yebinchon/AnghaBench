
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct media_frames_per_second {int denominator; int numerator; } ;
typedef int obs_data_t ;


 int * obs_data_create () ;
 int obs_data_set_double (int *,char*,int ) ;
 int obs_data_set_string (int *,char*,char const*) ;

__attribute__((used)) static inline obs_data_t *
make_frames_per_second(struct media_frames_per_second fps, const char *option)
{
 obs_data_t *obj = obs_data_create();

 if (!option) {
  obs_data_set_double(obj, "numerator", fps.numerator);
  obs_data_set_double(obj, "denominator", fps.denominator);

 } else {
  obs_data_set_string(obj, "option", option);
 }

 return obj;
}
