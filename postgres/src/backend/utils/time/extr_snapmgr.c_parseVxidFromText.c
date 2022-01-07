
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int localTransactionId; int backendId; } ;
typedef TYPE_1__ VirtualTransactionId ;


 int ERRCODE_INVALID_TEXT_REPRESENTATION ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 int sscanf (char*,char*,int *,int *) ;
 char* strchr (char*,char) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,int) ;

__attribute__((used)) static void
parseVxidFromText(const char *prefix, char **s, const char *filename,
      VirtualTransactionId *vxid)
{
 char *ptr = *s;
 int prefixlen = strlen(prefix);

 if (strncmp(ptr, prefix, prefixlen) != 0)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
     errmsg("invalid snapshot data in file \"%s\"", filename)));
 ptr += prefixlen;
 if (sscanf(ptr, "%d/%u", &vxid->backendId, &vxid->localTransactionId) != 2)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
     errmsg("invalid snapshot data in file \"%s\"", filename)));
 ptr = strchr(ptr, '\n');
 if (!ptr)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
     errmsg("invalid snapshot data in file \"%s\"", filename)));
 *s = ptr + 1;
}
