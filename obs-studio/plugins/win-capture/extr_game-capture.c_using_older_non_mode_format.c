
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;


 int SETTING_ANY_FULLSCREEN ;
 int SETTING_MODE ;
 scalar_t__ obs_data_has_user_value (int *,int ) ;

__attribute__((used)) static inline bool using_older_non_mode_format(obs_data_t *settings)
{
 return obs_data_has_user_value(settings, SETTING_ANY_FULLSCREEN) &&
        !obs_data_has_user_value(settings, SETTING_MODE);
}
