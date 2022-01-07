
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_3__ {char* text; int line; int column; int position; } ;
typedef TYPE_1__ json_error_t ;


 int JSON_ERROR_TEXT_LENGTH ;
 int vsnprintf (char*,int,char const*,int ) ;

void jsonp_error_vset(json_error_t *error, int line, int column,
                      size_t position, const char *msg, va_list ap)
{
    if(!error)
        return;

    if(error->text[0] != '\0') {

        return;
    }

    error->line = line;
    error->column = column;
    error->position = (int)position;

    vsnprintf(error->text, JSON_ERROR_TEXT_LENGTH, msg, ap);
    error->text[JSON_ERROR_TEXT_LENGTH - 1] = '\0';
}
