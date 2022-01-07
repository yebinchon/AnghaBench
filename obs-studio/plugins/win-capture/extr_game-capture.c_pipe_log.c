
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct game_capture {int dummy; } ;


 int info (char*,int *) ;

__attribute__((used)) static void pipe_log(void *param, uint8_t *data, size_t size)
{
 struct game_capture *gc = param;
 if (data && size)
  info("%s", data);
}
