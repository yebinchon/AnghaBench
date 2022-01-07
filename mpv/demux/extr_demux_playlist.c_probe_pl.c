
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pl_parser {int force; int s; } ;
struct pl_format {scalar_t__ (* parse ) (struct pl_parser*) ;int mime_types; } ;
typedef int int64_t ;


 int MP_ARRAY_SIZE (struct pl_format*) ;
 int MP_VERBOSE (struct pl_parser*,char*) ;
 scalar_t__ check_mimetype (int ,int ) ;
 struct pl_format* formats ;
 int stream_seek (int ,int ) ;
 int stream_tell (int ) ;
 scalar_t__ stub1 (struct pl_parser*) ;

__attribute__((used)) static const struct pl_format *probe_pl(struct pl_parser *p)
{
    int64_t start = stream_tell(p->s);
    for (int n = 0; n < MP_ARRAY_SIZE(formats); n++) {
        const struct pl_format *fmt = &formats[n];
        stream_seek(p->s, start);
        if (check_mimetype(p->s, fmt->mime_types)) {
            MP_VERBOSE(p, "forcing format by mime-type.\n");
            p->force = 1;
            return fmt;
        }
        if (fmt->parse(p) >= 0)
            return fmt;
    }
    return ((void*)0);
}
