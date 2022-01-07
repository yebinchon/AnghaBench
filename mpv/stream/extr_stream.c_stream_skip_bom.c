
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stream {int dummy; } ;
typedef int buf ;
struct TYPE_3__ {char* member_0; int member_1; } ;
typedef TYPE_1__ bstr ;


 int * bom ;
 scalar_t__ bstr_startswith0 (TYPE_1__,int ) ;
 int stream_read_peek (struct stream*,char*,int) ;
 int stream_skip (struct stream*,int ) ;
 int strlen (int ) ;

int stream_skip_bom(struct stream *s)
{
    char buf[4];
    int len = stream_read_peek(s, buf, sizeof(buf));
    bstr data = {buf, len};
    for (int n = 0; n < 3; n++) {
        if (bstr_startswith0(data, bom[n])) {
            stream_skip(s, strlen(bom[n]));
            return n;
        }
    }
    return -1;
}
