
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bstr ;


 int STREAM_AUDIO ;
 int STREAM_SUB ;
 int audio_exts ;
 int sub_exts ;
 scalar_t__ test_ext_list (int ,int ) ;

__attribute__((used)) static int test_ext(bstr ext)
{
    if (test_ext_list(ext, sub_exts))
        return STREAM_SUB;
    if (test_ext_list(ext, audio_exts))
        return STREAM_AUDIO;
    return -1;
}
