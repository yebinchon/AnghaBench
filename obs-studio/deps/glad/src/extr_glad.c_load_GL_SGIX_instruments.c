
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLSTOPINSTRUMENTSSGIXPROC ;
typedef scalar_t__ PFNGLSTARTINSTRUMENTSSGIXPROC ;
typedef scalar_t__ PFNGLREADINSTRUMENTSSGIXPROC ;
typedef scalar_t__ PFNGLPOLLINSTRUMENTSSGIXPROC ;
typedef scalar_t__ PFNGLINSTRUMENTSBUFFERSGIXPROC ;
typedef scalar_t__ PFNGLGETINSTRUMENTSSGIXPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_SGIX_instruments ;
 scalar_t__ glad_glGetInstrumentsSGIX ;
 scalar_t__ glad_glInstrumentsBufferSGIX ;
 scalar_t__ glad_glPollInstrumentsSGIX ;
 scalar_t__ glad_glReadInstrumentsSGIX ;
 scalar_t__ glad_glStartInstrumentsSGIX ;
 scalar_t__ glad_glStopInstrumentsSGIX ;

__attribute__((used)) static void load_GL_SGIX_instruments(GLADloadproc load) {
 if(!GLAD_GL_SGIX_instruments) return;
 glad_glGetInstrumentsSGIX = (PFNGLGETINSTRUMENTSSGIXPROC)load("glGetInstrumentsSGIX");
 glad_glInstrumentsBufferSGIX = (PFNGLINSTRUMENTSBUFFERSGIXPROC)load("glInstrumentsBufferSGIX");
 glad_glPollInstrumentsSGIX = (PFNGLPOLLINSTRUMENTSSGIXPROC)load("glPollInstrumentsSGIX");
 glad_glReadInstrumentsSGIX = (PFNGLREADINSTRUMENTSSGIXPROC)load("glReadInstrumentsSGIX");
 glad_glStartInstrumentsSGIX = (PFNGLSTARTINSTRUMENTSSGIXPROC)load("glStartInstrumentsSGIX");
 glad_glStopInstrumentsSGIX = (PFNGLSTOPINSTRUMENTSSGIXPROC)load("glStopInstrumentsSGIX");
}
