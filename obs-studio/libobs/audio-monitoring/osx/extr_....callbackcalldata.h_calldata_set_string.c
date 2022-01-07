
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int calldata_t ;


 int calldata_set_data (int *,char const*,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static inline void calldata_set_string(calldata_t *data, const char *name,
           const char *str)
{
 if (str)
  calldata_set_data(data, name, str, strlen(str) + 1);
 else
  calldata_set_data(data, name, ((void*)0), 0);
}
