
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdSinkPtr ;
typedef int gdImagePtr ;


 int gd_error (char*) ;

void gdImagePngToSink (gdImagePtr im, gdSinkPtr outSink)
{
 gd_error("PNG support is not available");
}
