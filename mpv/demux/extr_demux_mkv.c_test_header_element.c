
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct header_elem {int parsed; } ;
struct demuxer {int dummy; } ;
typedef int int64_t ;


 struct header_elem* get_header_element (struct demuxer*,int ,int ) ;

__attribute__((used)) static bool test_header_element(struct demuxer *demuxer, uint32_t id,
                                int64_t element_filepos)
{
    struct header_elem *elem = get_header_element(demuxer, id, element_filepos);
    if (!elem)
        return 0;
    if (elem->parsed)
        return 1;
    elem->parsed = 1;
    return 0;
}
