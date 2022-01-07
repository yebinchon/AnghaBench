
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_38__ TYPE_8__ ;
typedef struct TYPE_37__ TYPE_7__ ;
typedef struct TYPE_36__ TYPE_6__ ;
typedef struct TYPE_35__ TYPE_5__ ;
typedef struct TYPE_34__ TYPE_4__ ;
typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_25__ ;
typedef struct TYPE_30__ TYPE_22__ ;
typedef struct TYPE_29__ TYPE_1__ ;
typedef struct TYPE_28__ TYPE_18__ ;
typedef struct TYPE_27__ TYPE_15__ ;
typedef struct TYPE_26__ TYPE_11__ ;


struct priv {int buffer_size_in_ms; int frames_per_enqueue; int bytes_per_enqueue; double audio_latency; TYPE_8__** player; TYPE_22__** play; TYPE_7__** buffer_queue; TYPE_11__** engine; TYPE_15__** output_mix; int buffer_lock; int buf; TYPE_18__** sl; } ;
struct TYPE_31__ {int num; } ;
struct ao {int samplerate; int device_buffer; int def_buffer; int format; TYPE_25__ channels; struct priv* priv; } ;
struct TYPE_38__ {scalar_t__ (* Realize ) (TYPE_8__**,int ) ;scalar_t__ (* GetInterface ) (TYPE_8__**,int ,void*) ;} ;
struct TYPE_37__ {scalar_t__ (* RegisterCallback ) (TYPE_7__**,int ,struct ao*) ;} ;
struct TYPE_36__ {scalar_t__ (* GetConfiguration ) (TYPE_6__**,int const*,int*,int*) ;} ;
struct TYPE_35__ {int numChannels; int containerSize; int bitsPerSample; int channelMask; int sampleRate; int endianness; int representation; int formatType; } ;
struct TYPE_34__ {int numBuffers; int locatorType; } ;
struct TYPE_33__ {TYPE_15__** outputMix; int locatorType; } ;
struct TYPE_32__ {int * pFormat; void* pLocator; } ;
struct TYPE_30__ {scalar_t__ (* SetPlayState ) (TYPE_22__**,int ) ;} ;
struct TYPE_29__ {void* pLocator; void* pFormat; } ;
struct TYPE_28__ {scalar_t__ (* Realize ) (TYPE_18__**,int ) ;scalar_t__ (* GetInterface ) (TYPE_18__**,int ,void*) ;} ;
struct TYPE_27__ {scalar_t__ (* Realize ) (TYPE_15__**,int ) ;} ;
struct TYPE_26__ {scalar_t__ (* CreateOutputMix ) (TYPE_11__**,TYPE_15__***,int ,int *,int *) ;scalar_t__ (* CreateAudioPlayer ) (TYPE_11__**,TYPE_8__***,TYPE_1__*,TYPE_2__*,int,int *,int *) ;} ;
typedef int SLuint32 ;
typedef scalar_t__ SLint32 ;
typedef int SLchar ;
typedef int SLboolean ;
typedef int SLInterfaceID ;
typedef TYPE_1__ SLDataSource ;
typedef TYPE_2__ SLDataSink ;
typedef TYPE_3__ SLDataLocator_OutputMix ;
typedef TYPE_4__ SLDataLocator_BufferQueue ;
typedef TYPE_5__ SLAndroidDataFormat_PCM_EX ;
typedef TYPE_6__** SLAndroidConfigurationItf ;


 int AF_FORMAT_FLOAT ;
 int AF_FORMAT_S32 ;
 int CHK (scalar_t__) ;
 int MPMAX (int,int) ;
 int MP_ERR (struct ao*,char*,...) ;
 int MP_INFO (struct ao*,char*,double) ;
 int SL_ANDROID_DATAFORMAT_PCM_EX ;
 int SL_ANDROID_PCM_REPRESENTATION_FLOAT ;
 int SL_BOOLEAN_FALSE ;
 int SL_BOOLEAN_TRUE ;
 int SL_BYTEORDER_LITTLEENDIAN ;
 int SL_DATAFORMAT_PCM ;
 int SL_DATALOCATOR_BUFFERQUEUE ;
 int SL_DATALOCATOR_OUTPUTMIX ;
 int SL_IID_ANDROIDCONFIGURATION ;
 int SL_IID_BUFFERQUEUE ;
 int SL_IID_ENGINE ;
 int SL_IID_PLAY ;
 int SL_PLAYSTATE_PLAYING ;
 scalar_t__ SL_RESULT_SUCCESS ;
 int SL_SPEAKER_FRONT_LEFT ;
 int SL_SPEAKER_FRONT_RIGHT ;
 int af_fmt_from_planar (int ) ;
 scalar_t__ af_fmt_is_int (int ) ;
 int af_fmt_to_bytes (int ) ;
 int buffer_callback ;
 int calloc (int,int) ;
 int mp_chmap_from_channels (TYPE_25__*,int) ;
 int pthread_mutex_init (int *,int *) ;
 scalar_t__ slCreateEngine (TYPE_18__***,int ,int *,int ,int *,int *) ;
 scalar_t__ stub1 (TYPE_18__**,int ) ;
 scalar_t__ stub10 (TYPE_22__**,int ) ;
 scalar_t__ stub11 (TYPE_8__**,int ,TYPE_6__***) ;
 scalar_t__ stub12 (TYPE_6__**,int const*,int*,int*) ;
 scalar_t__ stub2 (TYPE_18__**,int ,void*) ;
 scalar_t__ stub3 (TYPE_11__**,TYPE_15__***,int ,int *,int *) ;
 scalar_t__ stub4 (TYPE_15__**,int ) ;
 scalar_t__ stub5 (TYPE_11__**,TYPE_8__***,TYPE_1__*,TYPE_2__*,int,int *,int *) ;
 scalar_t__ stub6 (TYPE_8__**,int ) ;
 scalar_t__ stub7 (TYPE_8__**,int ,void*) ;
 scalar_t__ stub8 (TYPE_8__**,int ,void*) ;
 scalar_t__ stub9 (TYPE_7__**,int ,struct ao*) ;
 int uninit (struct ao*) ;

__attribute__((used)) static int init(struct ao *ao)
{
    struct priv *p = ao->priv;
    SLDataLocator_BufferQueue locator_buffer_queue;
    SLDataLocator_OutputMix locator_output_mix;
    SLAndroidDataFormat_PCM_EX pcm;
    SLDataSource audio_source;
    SLDataSink audio_sink;


    mp_chmap_from_channels(&ao->channels, 2);

    CHK(slCreateEngine(&p->sl, 0, ((void*)0), 0, ((void*)0), ((void*)0)));
    CHK((*p->sl)->Realize(p->sl, SL_BOOLEAN_FALSE));
    CHK((*p->sl)->GetInterface(p->sl, SL_IID_ENGINE, (void*)&p->engine));
    CHK((*p->engine)->CreateOutputMix(p->engine, &p->output_mix, 0, ((void*)0), ((void*)0)));
    CHK((*p->output_mix)->Realize(p->output_mix, SL_BOOLEAN_FALSE));

    locator_buffer_queue.locatorType = SL_DATALOCATOR_BUFFERQUEUE;
    locator_buffer_queue.numBuffers = 8;

    if (af_fmt_is_int(ao->format)) {

        if (af_fmt_to_bytes(ao->format) > 2)
            ao->format = AF_FORMAT_S32;
        else
            ao->format = af_fmt_from_planar(ao->format);
        pcm.formatType = SL_DATAFORMAT_PCM;
    } else {
        ao->format = AF_FORMAT_FLOAT;
        pcm.formatType = SL_ANDROID_DATAFORMAT_PCM_EX;
        pcm.representation = SL_ANDROID_PCM_REPRESENTATION_FLOAT;
    }
    pcm.numChannels = ao->channels.num;
    pcm.containerSize = pcm.bitsPerSample = 8 * af_fmt_to_bytes(ao->format);
    pcm.channelMask = SL_SPEAKER_FRONT_LEFT | SL_SPEAKER_FRONT_RIGHT;
    pcm.endianness = SL_BYTEORDER_LITTLEENDIAN;
    pcm.sampleRate = ao->samplerate * 1000;

    if (p->buffer_size_in_ms) {
        ao->device_buffer = ao->samplerate * p->buffer_size_in_ms / 1000;


        ao->def_buffer = 0;
    }


    if (p->frames_per_enqueue) {
        ao->device_buffer = MPMAX(ao->device_buffer, p->frames_per_enqueue);
    } else {
        if (ao->device_buffer) {
            p->frames_per_enqueue = ao->device_buffer;
        } else if (ao->def_buffer) {
            p->frames_per_enqueue = ao->def_buffer * ao->samplerate;
        } else {
            MP_ERR(ao, "Enqueue size is not set and can neither be derived\n");
            goto error;
        }
    }

    p->bytes_per_enqueue = p->frames_per_enqueue * ao->channels.num *
        af_fmt_to_bytes(ao->format);
    p->buf = calloc(1, p->bytes_per_enqueue);
    if (!p->buf) {
        MP_ERR(ao, "Failed to allocate device buffer\n");
        goto error;
    }

    int r = pthread_mutex_init(&p->buffer_lock, ((void*)0));
    if (r) {
        MP_ERR(ao, "Failed to initialize the mutex: %d\n", r);
        goto error;
    }

    audio_source.pFormat = (void*)&pcm;
    audio_source.pLocator = (void*)&locator_buffer_queue;

    locator_output_mix.locatorType = SL_DATALOCATOR_OUTPUTMIX;
    locator_output_mix.outputMix = p->output_mix;

    audio_sink.pLocator = (void*)&locator_output_mix;
    audio_sink.pFormat = ((void*)0);

    SLInterfaceID iid_array[] = { SL_IID_BUFFERQUEUE, SL_IID_ANDROIDCONFIGURATION };
    SLboolean required[] = { SL_BOOLEAN_TRUE, SL_BOOLEAN_FALSE };
    CHK((*p->engine)->CreateAudioPlayer(p->engine, &p->player, &audio_source,
        &audio_sink, 2, iid_array, required));

    CHK((*p->player)->Realize(p->player, SL_BOOLEAN_FALSE));
    CHK((*p->player)->GetInterface(p->player, SL_IID_PLAY, (void*)&p->play));
    CHK((*p->player)->GetInterface(p->player, SL_IID_BUFFERQUEUE,
        (void*)&p->buffer_queue));
    CHK((*p->buffer_queue)->RegisterCallback(p->buffer_queue,
        buffer_callback, ao));
    CHK((*p->play)->SetPlayState(p->play, SL_PLAYSTATE_PLAYING));

    SLAndroidConfigurationItf android_config;
    SLuint32 audio_latency = 0, value_size = sizeof(SLuint32);

    SLint32 get_interface_result = (*p->player)->GetInterface(
        p->player,
        SL_IID_ANDROIDCONFIGURATION,
        &android_config
    );

    if (get_interface_result == SL_RESULT_SUCCESS) {
        SLint32 get_configuration_result = (*android_config)->GetConfiguration(
            android_config,
            (const SLchar *)"androidGetAudioLatency",
            &value_size,
            &audio_latency
        );

        if (get_configuration_result == SL_RESULT_SUCCESS) {
            p->audio_latency = (double)audio_latency / 1000.0;
            MP_INFO(ao, "Device latency is %f\n", p->audio_latency);
        }
    }

    return 1;
error:
    uninit(ao);
    return -1;
}
