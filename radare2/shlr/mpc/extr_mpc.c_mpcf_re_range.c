
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char mpc_val_t ;
typedef char mpc_parser_t ;


 char* calloc (int,int) ;
 int free (char*) ;
 char* mpc_fail (char*) ;
 char* mpc_noneof (char*) ;
 char* mpc_oneof (char*) ;
 char* mpc_re_range_escape_char (char const) ;
 char* realloc (char*,int) ;
 int strcat (char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static mpc_val_t *mpcf_re_range(mpc_val_t *x) {

  mpc_parser_t *out;
  size_t i, j;
  size_t start, end;
  const char *tmp = ((void*)0);
  const char *s = x;
  int comp = s[0] == '^' ? 1 : 0;
  char *range;

  if (s[0] == '\0') { free(x); return mpc_fail("Invalid Regex Range Expression"); }
  if (s[0] == '^' &&
      s[1] == '\0') { free(x); return mpc_fail("Invalid Regex Range Expression"); }

  range = calloc(1,1);

  for (i = comp; i < strlen(s); i++){


    if (s[i] == '\\') {
      tmp = mpc_re_range_escape_char(s[i+1]);
      if (tmp != ((void*)0)) {
        range = realloc(range, strlen(range) + strlen(tmp) + 1);
        strcat(range, tmp);
      } else {
        range = realloc(range, strlen(range) + 1 + 1);
        range[strlen(range) + 1] = '\0';
        range[strlen(range) + 0] = s[i+1];
      }
      i++;
    }


    else if (s[i] == '-') {
      if (s[i+1] == '\0' || i == 0) {
          range = realloc(range, strlen(range) + strlen("-") + 1);
          strcat(range, "-");
      } else {
        start = s[i-1]+1;
        end = s[i+1]-1;
        for (j = start; j <= end; j++) {
          range = realloc(range, strlen(range) + 1 + 1 + 1);
          range[strlen(range) + 1] = '\0';
          range[strlen(range) + 0] = j;
        }
      }
    }


    else {
      range = realloc(range, strlen(range) + 1 + 1);
      range[strlen(range) + 1] = '\0';
      range[strlen(range) + 0] = s[i];
    }

  }

  out = comp == 1 ? mpc_noneof(range) : mpc_oneof(range);

  free(x);
  free(range);

  return out;
}
