
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int cbBodyEnd; int cbBodyStart; int cbHeaderStart; int cbBoundaryStart; } ;
struct TYPE_5__ {TYPE_2__ body_offsets; } ;
typedef TYPE_1__ MimeBody ;
typedef int HRESULT ;
typedef TYPE_2__ BODYOFFSETS ;


 int S_OK ;
 int TRACE (char*,int ,int ,int ,int ) ;

__attribute__((used)) static HRESULT MimeBody_set_offsets(MimeBody *body, const BODYOFFSETS *offsets)
{
    TRACE("setting offsets to %d, %d, %d, %d\n", offsets->cbBoundaryStart,
          offsets->cbHeaderStart, offsets->cbBodyStart, offsets->cbBodyEnd);

    body->body_offsets = *offsets;
    return S_OK;
}
