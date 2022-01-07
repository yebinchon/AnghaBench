
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_ctx {int dummy; } ;


 int FLT_EPSILON ;
 int assert_float_equal (float,float,int ) ;
 float gl_video_scale_ambient_lux (double,double,double,double,double) ;

__attribute__((used)) static void run(struct test_ctx *ctx)
{
    float x;

    x = gl_video_scale_ambient_lux(16.0, 64.0, 2.40, 1.961, 16.0);
    assert_float_equal(x, 2.40f, FLT_EPSILON);

    x = gl_video_scale_ambient_lux(16.0, 64.0, 2.40, 1.961, 64.0);
    assert_float_equal(x, 1.961f, FLT_EPSILON);

    x = gl_video_scale_ambient_lux(16.0, 64.0, 1.961, 2.40, 64.0);
    assert_float_equal(x, 2.40f, FLT_EPSILON);

    x = gl_video_scale_ambient_lux(16.0, 64.0, 2.40, 1.961, 0.0);
    assert_float_equal(x, 2.40f, FLT_EPSILON);


    x = gl_video_scale_ambient_lux(16.0, 64.0, 2.40, 1.961, 32.0);
    float mid_gamma = (2.40 - 1.961) / 2 + 1.961;
    assert_float_equal(x, mid_gamma, FLT_EPSILON);
}
