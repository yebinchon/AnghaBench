
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpm_scoreboard_s {int dummy; } ;


 struct fpm_scoreboard_s* fpm_scoreboard ;

struct fpm_scoreboard_s *fpm_scoreboard_get()
{
 return fpm_scoreboard;
}
