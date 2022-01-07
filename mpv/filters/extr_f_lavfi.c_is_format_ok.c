
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_frame {scalar_t__ type; int data; } ;


 scalar_t__ MP_FRAME_AUDIO ;
 scalar_t__ MP_FRAME_VIDEO ;
 int is_aformat_ok (int ,int ) ;
 int is_vformat_ok (int ,int ) ;

__attribute__((used)) static bool is_format_ok(struct mp_frame a, struct mp_frame b)
{
    if (a.type == b.type && a.type == MP_FRAME_VIDEO)
        return is_vformat_ok(a.data, b.data);
    if (a.type == b.type && a.type == MP_FRAME_AUDIO)
        return is_aformat_ok(a.data, b.data);
    return 0;
}
