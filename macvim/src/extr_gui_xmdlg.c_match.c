
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef enum ListSpecifier { ____Placeholder_ListSpecifier } ListSpecifier ;
struct TYPE_4__ {char** sel; int in_pixels; } ;
typedef TYPE_1__ SharedFontSelData ;
typedef int Boolean ;






 int TEMP_BUF_SIZE ;
 int True ;
 int encoding_part (int ,char*) ;
 int fn (TYPE_1__*,int) ;
 int name_part (int ,char*) ;
 int size_part (int ,char*,int ) ;
 int strcmp (char*,char*) ;
 int style_part (int ,char*) ;
 char* wild ;

__attribute__((used)) static Boolean
match(SharedFontSelData *data, enum ListSpecifier l, int i)
{
    char buf[TEMP_BUF_SIZE];



    if (!data->sel[l] || !strcmp(data->sel[l], wild))
 return True;


    switch (l)
    {
 case 131:
     encoding_part(fn(data, i), buf);
     break;

 case 130:
     name_part(fn(data, i), buf);
     break;

 case 128:
     style_part(fn(data, i), buf);
     break;

 case 129:
     size_part(fn(data, i), buf, data->in_pixels);
     break;
 default:
     ;
    }



    return !strcmp(buf, data->sel[l]);
}
