
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alsa_data {int dummy; } ;


 scalar_t__ _alsa_open (struct alsa_data*) ;
 int _alsa_start_reopen (struct alsa_data*) ;
 int _alsa_stop_reopen (struct alsa_data*) ;

bool _alsa_try_open(struct alsa_data *data)
{
 _alsa_stop_reopen(data);

 if (_alsa_open(data))
  return 1;

 _alsa_start_reopen(data);

 return 0;
}
