
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int height; } ;
struct window_capture {TYPE_1__ capture; } ;



__attribute__((used)) static uint32_t wc_height(void *data)
{
 struct window_capture *wc = data;
 return wc->capture.height;
}
