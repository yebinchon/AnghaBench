
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVCodecDescriptor ;


 int AV_LOG_ERROR ;
 int ** av_calloc (unsigned int,int) ;
 int av_log (int *,int ,char*,unsigned int) ;
 int * avcodec_descriptor_next (int const*) ;

__attribute__((used)) static bool get_codecs(const AVCodecDescriptor ***descs, unsigned int *size)
{
 const AVCodecDescriptor *desc = ((void*)0);
 const AVCodecDescriptor **codecs;
 unsigned int codec_count = 0;
 unsigned int i = 0;

 while ((desc = avcodec_descriptor_next(desc)) != ((void*)0))
  codec_count++;

 codecs = av_calloc(codec_count, sizeof(AVCodecDescriptor *));

 if (codecs == ((void*)0)) {
  av_log(((void*)0), AV_LOG_ERROR,
         "unable to allocate sorted codec "
         "array with size %d",
         codec_count);
  return 0;
 }

 while ((desc = avcodec_descriptor_next(desc)) != ((void*)0))
  codecs[i++] = desc;

 *size = codec_count;
 *descs = codecs;
 return 1;
}
