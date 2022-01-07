
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct text_lookup {int top; } ;
struct text_leaf {int lookup; int value; } ;
struct strref {char* array; int len; } ;
struct lexer {int dummy; } ;


 struct text_leaf* bmalloc (int) ;
 int bstrdup_n (char*,int ) ;
 int convert_string (char*,int ) ;
 int lexer_free (struct lexer*) ;
 int lexer_init (struct lexer*) ;
 int lexer_start (struct lexer*,char const*) ;
 int lookup_addstring (int ,struct text_leaf*,int ) ;
 scalar_t__ lookup_gettoken (struct lexer*,struct strref*) ;
 int lookup_goto_nextline (struct lexer*) ;
 int strref_clear (struct strref*) ;

__attribute__((used)) static void lookup_addfiledata(struct text_lookup *lookup,
          const char *file_data)
{
 struct lexer lex;
 struct strref name, value;

 lexer_init(&lex);
 lexer_start(&lex, file_data);
 strref_clear(&name);
 strref_clear(&value);

 while (lookup_gettoken(&lex, &name)) {
  struct text_leaf *leaf;
  bool got_eq = 0;

  if (*name.array == '\n')
   continue;
 getval:
  if (!lookup_gettoken(&lex, &value))
   break;
  if (*value.array == '\n')
   continue;
  else if (!got_eq && *value.array == '=') {
   got_eq = 1;
   goto getval;
  }

  leaf = bmalloc(sizeof(struct text_leaf));
  leaf->lookup = bstrdup_n(name.array, name.len);
  leaf->value = convert_string(value.array, value.len);

  lookup_addstring(leaf->lookup, leaf, lookup->top);

  if (!lookup_goto_nextline(&lex))
   break;
 }

 lexer_free(&lex);
}
