
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int vi_mode; int prompt; scalar_t__ prompt_mode; } ;
struct TYPE_8__ {TYPE_2__* context; } ;
struct TYPE_6__ {char* invalid; char* prompt; char* reset; } ;
struct TYPE_7__ {TYPE_1__ pal; scalar_t__ color_mode; } ;
typedef TYPE_3__ RCons ;



 TYPE_5__ I ;

 int free (int ) ;
 TYPE_3__* r_cons_singleton () ;
 char* r_str_escape (int ) ;
 int r_str_newf (char*,char const*,char*,char const*) ;

__attribute__((used)) static void __update_prompt_color () {
 RCons *cons = r_cons_singleton ();
 const char *BEGIN = "", *END = "";
 if (cons->context->color_mode) {
  if (I.prompt_mode) {
   switch (I.vi_mode) {
   case 129:
    BEGIN = cons->context->pal.invalid;
    break;
   case 128:
   default:
    BEGIN = cons->context->pal.prompt;
    break;
   }
  } else {
   BEGIN = cons->context->pal.prompt;
  }
  END = cons->context->pal.reset;
 }
 char *prompt = r_str_escape (I.prompt);
 free (I.prompt);
 I.prompt = r_str_newf ("%s%s%s", BEGIN, prompt, END);
}
