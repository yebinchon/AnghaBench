
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_19__ {int cflags; scalar_t__ regex; } ;
struct TYPE_13__ {int flags; int patternlen; int pattern; } ;
struct TYPE_14__ {TYPE_1__ like_regex; } ;
struct TYPE_18__ {TYPE_2__ content; } ;
struct TYPE_15__ {int len; int val; } ;
struct TYPE_16__ {TYPE_3__ string; } ;
struct TYPE_17__ {TYPE_4__ val; } ;
typedef TYPE_5__ JsonbValue ;
typedef TYPE_6__ JsonPathItem ;
typedef int JsonPathBool ;
typedef TYPE_7__ JsonLikeRegexContext ;


 int DEFAULT_COLLATION_OID ;
 scalar_t__ RE_compile_and_execute (scalar_t__,int ,int ,int ,int ,int ,int *) ;
 scalar_t__ cstring_to_text_with_len (int ,int ) ;
 TYPE_5__* getScalar (TYPE_5__*,int ) ;
 int jbvString ;
 int jpbFalse ;
 int jpbTrue ;
 int jpbUnknown ;
 int jspConvertRegexFlags (int ) ;

__attribute__((used)) static JsonPathBool
executeLikeRegex(JsonPathItem *jsp, JsonbValue *str, JsonbValue *rarg,
     void *param)
{
 JsonLikeRegexContext *cxt = param;

 if (!(str = getScalar(str, jbvString)))
  return jpbUnknown;


 if (!cxt->regex)
 {
  cxt->regex =
   cstring_to_text_with_len(jsp->content.like_regex.pattern,
          jsp->content.like_regex.patternlen);
  cxt->cflags = jspConvertRegexFlags(jsp->content.like_regex.flags);
 }

 if (RE_compile_and_execute(cxt->regex, str->val.string.val,
          str->val.string.len,
          cxt->cflags, DEFAULT_COLLATION_OID, 0, ((void*)0)))
  return jpbTrue;

 return jpbFalse;
}
