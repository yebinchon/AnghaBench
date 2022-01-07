
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_dev {int alias; int dev_name; } ;


 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static bool swlib_match_name(struct switch_dev *dev, const char *name)
{
 return (strcmp(name, dev->dev_name) == 0 ||
  strcmp(name, dev->alias) == 0);
}
