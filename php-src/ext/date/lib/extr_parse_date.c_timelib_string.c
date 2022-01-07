
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ tok; scalar_t__ cur; } ;
typedef TYPE_1__ Scanner ;


 int memcpy (char*,scalar_t__,scalar_t__) ;
 char* timelib_calloc (int,scalar_t__) ;

__attribute__((used)) static char *timelib_string(Scanner *s)
{
 char *tmp = timelib_calloc(1, s->cur - s->tok + 1);
 memcpy(tmp, s->tok, s->cur - s->tok);

 return tmp;
}
