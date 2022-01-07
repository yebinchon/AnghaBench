
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ftprintf (int ,int ,int ) ;
 int stderr ;
 int title_string ;
 int usage_message ;

__attribute__((used)) static void
usage(void)
{
    _ftprintf(stderr,
              usage_message,
              title_string);
}
