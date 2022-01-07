
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_11__ {scalar_t__ len; } ;
struct TYPE_10__ {int suffix; char* character; void* type; TYPE_7__* key; } ;
struct TYPE_9__ {int id; scalar_t__ len; } ;
typedef int NUMDesc ;
typedef int KeyWord ;
typedef TYPE_1__ KeySuffix ;
typedef TYPE_2__ FormatNode ;


 int DCH_FLAG ;
 int DEBUG_elog_output ;
 int ERRCODE_INVALID_DATETIME_FORMAT ;
 int ERROR ;
 void* NODE_TYPE_ACTION ;
 void* NODE_TYPE_CHAR ;
 void* NODE_TYPE_END ;
 void* NODE_TYPE_SEPARATOR ;
 void* NODE_TYPE_SPACE ;
 int NUMDesc_prepare (int *,TYPE_2__*) ;
 int NUM_FLAG ;
 int STD_FLAG ;
 int SUFFTYPE_POSTFIX ;
 int SUFFTYPE_PREFIX ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 TYPE_7__* index_seq_search (char const*,int const*,int const*) ;
 scalar_t__ is_separator_char (char const*) ;
 scalar_t__ isspace (unsigned char) ;
 int memcpy (char*,char const*,int) ;
 int pg_mblen (char const*) ;
 int pnstrdup (char const*,int) ;
 int * strchr (char*,char const) ;
 TYPE_1__* suff_search (char const*,TYPE_1__ const*,int ) ;

__attribute__((used)) static void
parse_format(FormatNode *node, const char *str, const KeyWord *kw,
    const KeySuffix *suf, const int *index, uint32 flags, NUMDesc *Num)
{
 FormatNode *n;





 n = node;

 while (*str)
 {
  int suffix = 0;
  const KeySuffix *s;




  if ((flags & DCH_FLAG) &&
   (s = suff_search(str, suf, SUFFTYPE_PREFIX)) != ((void*)0))
  {
   suffix |= s->id;
   if (s->len)
    str += s->len;
  }




  if (*str && (n->key = index_seq_search(str, kw, index)) != ((void*)0))
  {
   n->type = NODE_TYPE_ACTION;
   n->suffix = suffix;
   if (n->key->len)
    str += n->key->len;




   if (flags & NUM_FLAG)
    NUMDesc_prepare(Num, n);




   if ((flags & DCH_FLAG) && *str &&
    (s = suff_search(str, suf, SUFFTYPE_POSTFIX)) != ((void*)0))
   {
    n->suffix |= s->id;
    if (s->len)
     str += s->len;
   }

   n++;
  }
  else if (*str)
  {
   int chlen;

   if (flags & STD_FLAG)
   {



    if (strchr("-./,':; ", *str) == ((void*)0))
     ereport(ERROR,
       (errcode(ERRCODE_INVALID_DATETIME_FORMAT),
        errmsg("invalid datetime format separator: \"%s\"",
         pnstrdup(str, pg_mblen(str)))));

    if (*str == ' ')
     n->type = NODE_TYPE_SPACE;
    else
     n->type = NODE_TYPE_SEPARATOR;

    n->character[0] = *str;
    n->character[1] = '\0';
    n->key = ((void*)0);
    n->suffix = 0;
    n++;
    str++;
   }
   else if (*str == '"')
   {



    str++;
    while (*str)
    {
     if (*str == '"')
     {
      str++;
      break;
     }

     if (*str == '\\' && *(str + 1))
      str++;
     chlen = pg_mblen(str);
     n->type = NODE_TYPE_CHAR;
     memcpy(n->character, str, chlen);
     n->character[chlen] = '\0';
     n->key = ((void*)0);
     n->suffix = 0;
     n++;
     str += chlen;
    }
   }
   else
   {




    if (*str == '\\' && *(str + 1) == '"')
     str++;
    chlen = pg_mblen(str);

    if ((flags & DCH_FLAG) && is_separator_char(str))
     n->type = NODE_TYPE_SEPARATOR;
    else if (isspace((unsigned char) *str))
     n->type = NODE_TYPE_SPACE;
    else
     n->type = NODE_TYPE_CHAR;

    memcpy(n->character, str, chlen);
    n->character[chlen] = '\0';
    n->key = ((void*)0);
    n->suffix = 0;
    n++;
    str += chlen;
   }
  }
 }

 n->type = NODE_TYPE_END;
 n->suffix = 0;
}
