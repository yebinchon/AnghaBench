
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;


 int SF_TEXT ;

int reg_formatindex(WPARAM format)
{
    return (format & SF_TEXT) ? 1 : 0;
}
