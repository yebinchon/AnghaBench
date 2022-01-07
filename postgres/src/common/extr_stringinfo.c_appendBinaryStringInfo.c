
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* data; int len; } ;
typedef TYPE_1__* StringInfo ;


 int Assert (int ) ;
 int enlargeStringInfo (TYPE_1__*,int) ;
 int memcpy (char*,char const*,int) ;

void
appendBinaryStringInfo(StringInfo str, const char *data, int datalen)
{
 Assert(str != ((void*)0));


 enlargeStringInfo(str, datalen);


 memcpy(str->data + str->len, data, datalen);
 str->len += datalen;






 str->data[str->len] = '\0';
}
