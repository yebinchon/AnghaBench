
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* xsltNumberDataPtr ;
typedef TYPE_2__* xsltFormatTokenPtr ;
typedef TYPE_3__* xsltFormatPtr ;
typedef int xmlBufferPtr ;
struct TYPE_11__ {int nTokens; int * end; TYPE_2__* tokens; int * start; } ;
struct TYPE_10__ {int width; int token; int * separator; } ;
struct TYPE_9__ {int groupingCharacterLen; int groupingCharacter; int digitsPerGroup; } ;


 char* DEFAULT_SEPARATOR ;
 int FALSE ;
 int IS_DIGIT_ZERO (int ) ;
 int TRUE ;
 TYPE_2__ default_token ;
 double floor (double) ;
 int xmlBufferCCat (int ,char*) ;
 int xmlBufferCat (int ,int *) ;
 int xmlXPathIsInf (double) ;
 int xmlXPathIsNaN (double) ;
 int xsltNumberFormatAlpha (TYPE_1__*,int ,double,int ) ;
 int xsltNumberFormatDecimal (int ,double,int ,int ,int ,int ,int ) ;
 int xsltNumberFormatRoman (TYPE_1__*,int ,double,int ) ;
 int xsltTransformError (int *,int *,int *,char*) ;

__attribute__((used)) static void
xsltNumberFormatInsertNumbers(xsltNumberDataPtr data,
         double *numbers,
         int numbers_max,
         xsltFormatPtr tokens,
         xmlBufferPtr buffer)
{
    int i = 0;
    double number;
    xsltFormatTokenPtr token;




    if (tokens->start != ((void*)0))
  xmlBufferCat(buffer, tokens->start);

    for (i = 0; i < numbers_max; i++) {

 number = numbers[(numbers_max - 1) - i];

        number = floor(number + 0.5);
        if (number < 0.0) {
            xsltTransformError(((void*)0), ((void*)0), ((void*)0),
                    "xsl-number : negative value\n");

            number = 0.0;
        }
 if (i < tokens->nTokens) {




   token = &(tokens->tokens[i]);
 } else if (tokens->nTokens > 0) {





   token = &(tokens->tokens[tokens->nTokens - 1]);
 } else {




   token = &default_token;
 }


 if (i > 0) {
     if (token->separator != ((void*)0))
  xmlBufferCat(buffer, token->separator);
     else
  xmlBufferCCat(buffer, DEFAULT_SEPARATOR);
 }

 switch (xmlXPathIsInf(number)) {
 case -1:
     xmlBufferCCat(buffer, "-Infinity");
     break;
 case 1:
     xmlBufferCCat(buffer, "Infinity");
     break;
 default:
     if (xmlXPathIsNaN(number)) {
  xmlBufferCCat(buffer, "NaN");
     } else {

  switch (token->token) {
  case 'A':
      xsltNumberFormatAlpha(data, buffer, number, TRUE);
      break;
  case 'a':
      xsltNumberFormatAlpha(data, buffer, number, FALSE);
      break;
  case 'I':
      xsltNumberFormatRoman(data, buffer, number, TRUE);
      break;
  case 'i':
      xsltNumberFormatRoman(data, buffer, number, FALSE);
      break;
  default:
      if (IS_DIGIT_ZERO(token->token)) {
   xsltNumberFormatDecimal(buffer,
      number,
      token->token,
      token->width,
      data->digitsPerGroup,
      data->groupingCharacter,
      data->groupingCharacterLen);
      }
      break;
  }
     }

 }
    }




    if (tokens->end != ((void*)0))
  xmlBufferCat(buffer, tokens->end);

}
