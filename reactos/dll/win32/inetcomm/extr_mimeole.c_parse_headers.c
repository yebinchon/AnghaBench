
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {TYPE_1__* prop; int entry; } ;
typedef TYPE_2__ header_t ;
struct TYPE_14__ {int headers; } ;
struct TYPE_12__ {int id; } ;
typedef TYPE_3__ MimeBody ;
typedef int IStream ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,char*) ;


 int copy_headers_to_buf (int *,char**) ;
 int init_content_encoding (TYPE_3__*,TYPE_2__*) ;
 int init_content_type (TYPE_3__*,TYPE_2__*) ;
 int list_add_tail (int *,int *) ;
 TYPE_2__* read_prop (TYPE_3__*,char**) ;
 int read_value (TYPE_2__*,char**) ;

__attribute__((used)) static HRESULT parse_headers(MimeBody *body, IStream *stm)
{
    char *header_buf, *cur_header_ptr;
    HRESULT hr;
    header_t *header;

    hr = copy_headers_to_buf(stm, &header_buf);
    if(FAILED(hr)) return hr;

    cur_header_ptr = header_buf;
    while((header = read_prop(body, &cur_header_ptr)))
    {
        read_value(header, &cur_header_ptr);
        list_add_tail(&body->headers, &header->entry);

        switch(header->prop->id) {
        case 129:
            init_content_type(body, header);
            break;
        case 128:
            init_content_encoding(body, header);
            break;
        }
    }

    HeapFree(GetProcessHeap(), 0, header_buf);
    return hr;
}
