
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* xsltFormatPtr ;
typedef scalar_t__ xmlChar ;
struct TYPE_7__ {int width; int separator; int token; } ;
struct TYPE_6__ {size_t nTokens; int * end; TYPE_1__* tokens; int * start; } ;
struct TYPE_5__ {int width; int token; int * separator; } ;


 int BAD_CAST (int ) ;
 int DEFAULT_SEPARATOR ;
 int DEFAULT_TOKEN ;
 scalar_t__ IS_DIGIT (int) ;
 scalar_t__ IS_DIGIT_ONE (int) ;
 scalar_t__ IS_DIGIT_ZERO (int) ;
 scalar_t__ IS_LETTER (int) ;
 size_t MAX_TOKENS ;
 TYPE_4__ default_token ;
 int xmlStringCurrentChar (int *,scalar_t__ const*,int*) ;
 void* xmlStrndup (scalar_t__ const*,int) ;

__attribute__((used)) static void
xsltNumberFormatTokenize(const xmlChar *format,
    xsltFormatPtr tokens)
{
    int ix = 0;
    int j;
    int val;
    int len;

    default_token.token = DEFAULT_TOKEN;
    default_token.width = 1;
    default_token.separator = BAD_CAST(DEFAULT_SEPARATOR);


    tokens->start = ((void*)0);
    tokens->tokens[0].separator = ((void*)0);
    tokens->end = ((void*)0);





    while (! (IS_LETTER(val=xmlStringCurrentChar(((void*)0), format+ix, &len)) ||
       IS_DIGIT(val)) ) {
 if (format[ix] == 0)
     break;
 ix += len;
    }
    if (ix > 0)
 tokens->start = xmlStrndup(format, ix);


    for (tokens->nTokens = 0; tokens->nTokens < MAX_TOKENS;
  tokens->nTokens++) {
 if (format[ix] == 0)
     break;





 if (tokens->nTokens > 0) {
     tokens->tokens[tokens->nTokens].separator = tokens->end;
     tokens->end = ((void*)0);
 }

 val = xmlStringCurrentChar(((void*)0), format+ix, &len);
 if (IS_DIGIT_ONE(val) ||
   IS_DIGIT_ZERO(val)) {
     tokens->tokens[tokens->nTokens].width = 1;
     while (IS_DIGIT_ZERO(val)) {
  tokens->tokens[tokens->nTokens].width++;
  ix += len;
  val = xmlStringCurrentChar(((void*)0), format+ix, &len);
     }
     if (IS_DIGIT_ONE(val)) {
  tokens->tokens[tokens->nTokens].token = val - 1;
  ix += len;
  val = xmlStringCurrentChar(((void*)0), format+ix, &len);
     }
 } else if ( (val == (xmlChar)'A') ||
      (val == (xmlChar)'a') ||
      (val == (xmlChar)'I') ||
      (val == (xmlChar)'i') ) {
     tokens->tokens[tokens->nTokens].token = val;
     ix += len;
     val = xmlStringCurrentChar(((void*)0), format+ix, &len);
 } else {






     tokens->tokens[tokens->nTokens].token = (xmlChar)'0';
     tokens->tokens[tokens->nTokens].width = 1;
 }
 while (IS_LETTER(val) || IS_DIGIT(val)) {
     ix += len;
     val = xmlStringCurrentChar(((void*)0), format+ix, &len);
 }




 j = ix;
 while (! (IS_LETTER(val) || IS_DIGIT(val))) {
     if (val == 0)
  break;
     ix += len;
     val = xmlStringCurrentChar(((void*)0), format+ix, &len);
 }
 if (ix > j)
     tokens->end = xmlStrndup(&format[j], ix - j);
    }
}
