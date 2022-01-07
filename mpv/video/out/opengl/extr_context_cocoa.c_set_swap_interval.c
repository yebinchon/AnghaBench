
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CGLError ;
typedef int CGLContextObj ;


 int CGLGetCurrentContext () ;
 scalar_t__ CGLSetParameter (int ,int ,int*) ;
 int kCGLCPSwapInterval ;
 scalar_t__ kCGLNoError ;

__attribute__((used)) static int set_swap_interval(int enabled)
{
    CGLContextObj ctx = CGLGetCurrentContext();
    CGLError err = CGLSetParameter(ctx, kCGLCPSwapInterval, &enabled);
    return (err == kCGLNoError) ? 0 : -1;
}
