
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int timelib_error_message ;
struct TYPE_8__ {int message; int character; int * position; } ;
struct TYPE_7__ {int str; TYPE_1__* errors; int * tok; } ;
struct TYPE_6__ {int error_count; TYPE_3__* error_messages; } ;
typedef TYPE_2__ Scanner ;


 TYPE_3__* timelib_realloc (TYPE_3__*,int) ;
 int timelib_strdup (char*) ;

__attribute__((used)) static void add_error(Scanner *s, char *error)
{
 s->errors->error_count++;
 s->errors->error_messages = timelib_realloc(s->errors->error_messages, s->errors->error_count * sizeof(timelib_error_message));
 s->errors->error_messages[s->errors->error_count - 1].position = s->tok ? s->tok - s->str : 0;
 s->errors->error_messages[s->errors->error_count - 1].character = s->tok ? *s->tok : 0;
 s->errors->error_messages[s->errors->error_count - 1].message = timelib_strdup(error);
}
