
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum udev_action { ____Placeholder_udev_action } udev_action ;


 int UDEV_ACTION_ADDED ;
 int UDEV_ACTION_REMOVED ;
 int UDEV_ACTION_UNKNOWN ;
 int strncmp (char*,char const*,int) ;

__attribute__((used)) static enum udev_action udev_action_to_enum(const char *action)
{
 if (!action)
  return UDEV_ACTION_UNKNOWN;

 if (!strncmp("add", action, 3))
  return UDEV_ACTION_ADDED;
 if (!strncmp("remove", action, 6))
  return UDEV_ACTION_REMOVED;

 return UDEV_ACTION_UNKNOWN;
}
