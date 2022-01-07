
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdSourcePtr ;
typedef int * gdImagePtr ;


 int gd_error (char*) ;

gdImagePtr gdImageCreateFromPngSource (gdSourcePtr inSource)
{
 gd_error("PNG support is not available");
 return ((void*)0);
}
