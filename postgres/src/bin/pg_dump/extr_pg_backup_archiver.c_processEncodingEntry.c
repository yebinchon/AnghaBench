
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char* defn; } ;
typedef TYPE_2__ TocEntry ;
struct TYPE_6__ {int encoding; } ;
struct TYPE_8__ {TYPE_1__ public; } ;
typedef TYPE_3__ ArchiveHandle ;


 int fatal (char*,char*) ;
 int free (char*) ;
 int pg_char_to_encoding (char*) ;
 char* pg_strdup (char*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static void
processEncodingEntry(ArchiveHandle *AH, TocEntry *te)
{

 char *defn = pg_strdup(te->defn);
 char *ptr1;
 char *ptr2 = ((void*)0);
 int encoding;

 ptr1 = strchr(defn, '\'');
 if (ptr1)
  ptr2 = strchr(++ptr1, '\'');
 if (ptr2)
 {
  *ptr2 = '\0';
  encoding = pg_char_to_encoding(ptr1);
  if (encoding < 0)
   fatal("unrecognized encoding \"%s\"",
      ptr1);
  AH->public.encoding = encoding;
 }
 else
  fatal("invalid ENCODING item: %s",
     te->defn);

 free(defn);
}
