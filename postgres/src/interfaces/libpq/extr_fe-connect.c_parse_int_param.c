
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int errorMessage; } ;
typedef TYPE_1__ PGconn ;


 int Assert (int ) ;
 int appendPQExpBuffer (int *,int ,char const*,char const*) ;
 scalar_t__ errno ;
 scalar_t__ isspace (unsigned char) ;
 int libpq_gettext (char*) ;
 long strtol (char const*,char**,int) ;

__attribute__((used)) static bool
parse_int_param(const char *value, int *result, PGconn *conn,
    const char *context)
{
 char *end;
 long numval;

 Assert(value != ((void*)0));

 *result = 0;


 errno = 0;
 numval = strtol(value, &end, 10);





 if (value == end || errno != 0 || numval != (int) numval)
  goto error;





 while (*end != '\0' && isspace((unsigned char) *end))
  end++;

 if (*end != '\0')
  goto error;

 *result = numval;
 return 1;

error:
 appendPQExpBuffer(&conn->errorMessage,
       libpq_gettext("invalid integer value \"%s\" for connection option \"%s\"\n"),
       value, context);
 return 0;
}
