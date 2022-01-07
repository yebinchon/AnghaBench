
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct output {int dummy; } ;


 int output_append_full (struct output*,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int output_append(struct output *output, const char *str)
{
    return output_append_full(output, str, strlen(str) + 1);
}
