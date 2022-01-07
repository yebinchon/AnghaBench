
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int imagetag_cmdline_arg_type ;






 int FIX_UNUSED (void*) ;
 int check_possible_values (char*,char const**) ;
 int fprintf (int ,char*,char*,char const*,...) ;
 int free (char*) ;
 char* gengetopt_strdup (char const*) ;
 char* package_name ;
 int stderr ;
 int strtol (char const*,char**,int ) ;

__attribute__((used)) static
int update_arg(void *field, char **orig_field,
               unsigned int *field_given, unsigned int *prev_given,
               char *value, const char *possible_values[],
               const char *default_value,
               imagetag_cmdline_arg_type arg_type,
               int check_ambiguity, int override,
               int no_free, int multiple_option,
               const char *long_opt, char short_opt,
               const char *additional_error)
{
  char *stop_char = 0;
  const char *val = value;
  int found;
  char **string_field;
  FIX_UNUSED (field);

  stop_char = 0;
  found = 0;

  if (!multiple_option && prev_given && (*prev_given || (check_ambiguity && *field_given)))
    {
      if (short_opt != '-')
        fprintf (stderr, "%s: `--%s' (`-%c') option given more than once%s\n",
               package_name, long_opt, short_opt,
               (additional_error ? additional_error : ""));
      else
        fprintf (stderr, "%s: `--%s' option given more than once%s\n",
               package_name, long_opt,
               (additional_error ? additional_error : ""));
      return 1;
    }

  if (possible_values && (found = check_possible_values((value ? value : default_value), possible_values)) < 0)
    {
      if (short_opt != '-')
        fprintf (stderr, "%s: %s argument, \"%s\", for option `--%s' (`-%c')%s\n",
          package_name, (found == -2) ? "ambiguous" : "invalid", value, long_opt, short_opt,
          (additional_error ? additional_error : ""));
      else
        fprintf (stderr, "%s: %s argument, \"%s\", for option `--%s'%s\n",
          package_name, (found == -2) ? "ambiguous" : "invalid", value, long_opt,
          (additional_error ? additional_error : ""));
      return 1;
    }

  if (field_given && *field_given && ! override)
    return 0;
  if (prev_given)
    (*prev_given)++;
  if (field_given)
    (*field_given)++;
  if (possible_values)
    val = possible_values[found];

  switch(arg_type) {
  case 131:
    *((int *)field) = !*((int *)field);
    break;
  case 130:
    if (val) *((int *)field) = strtol (val, &stop_char, 0);
    break;
  case 128:
    if (val) {
      string_field = (char **)field;
      if (!no_free && *string_field)
        free (*string_field);
      *string_field = gengetopt_strdup (val);
    }
    break;
  default:
    break;
  };


  switch(arg_type) {
  case 130:
    if (val && !(stop_char && *stop_char == '\0')) {
      fprintf(stderr, "%s: invalid numeric value: %s\n", package_name, val);
      return 1;
    }
    break;
  default:
    ;
  };


  switch(arg_type) {
  case 129:
  case 131:
    break;
  default:
    if (value && orig_field) {
      if (no_free) {
        *orig_field = value;
      } else {
        if (*orig_field)
          free (*orig_field);
        *orig_field = gengetopt_strdup (value);
      }
    }
  };

  return 0;
}
