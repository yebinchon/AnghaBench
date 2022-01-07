
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ lrint (double) ;
 char* talloc_asprintf (int *,char*,int) ;

__attribute__((used)) static char *format_delay(double time)
{
    return talloc_asprintf(((void*)0), "%d ms", (int)lrint(time * 1000));
}
