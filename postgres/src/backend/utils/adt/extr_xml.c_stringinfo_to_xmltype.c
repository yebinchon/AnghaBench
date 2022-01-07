
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xmltype ;
struct TYPE_3__ {int len; int data; } ;
typedef TYPE_1__* StringInfo ;


 scalar_t__ cstring_to_text_with_len (int ,int ) ;

__attribute__((used)) static xmltype *
stringinfo_to_xmltype(StringInfo buf)
{
 return (xmltype *) cstring_to_text_with_len(buf->data, buf->len);
}
