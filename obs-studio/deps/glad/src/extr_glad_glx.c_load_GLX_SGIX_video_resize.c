
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLXQUERYCHANNELRECTSGIXPROC ;
typedef scalar_t__ PFNGLXQUERYCHANNELDELTASSGIXPROC ;
typedef scalar_t__ PFNGLXCHANNELRECTSYNCSGIXPROC ;
typedef scalar_t__ PFNGLXCHANNELRECTSGIXPROC ;
typedef scalar_t__ PFNGLXBINDCHANNELTOWINDOWSGIXPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GLX_SGIX_video_resize ;
 scalar_t__ glad_glXBindChannelToWindowSGIX ;
 scalar_t__ glad_glXChannelRectSGIX ;
 scalar_t__ glad_glXChannelRectSyncSGIX ;
 scalar_t__ glad_glXQueryChannelDeltasSGIX ;
 scalar_t__ glad_glXQueryChannelRectSGIX ;

__attribute__((used)) static void load_GLX_SGIX_video_resize(GLADloadproc load) {
 if(!GLAD_GLX_SGIX_video_resize) return;
 glad_glXBindChannelToWindowSGIX = (PFNGLXBINDCHANNELTOWINDOWSGIXPROC)load("glXBindChannelToWindowSGIX");
 glad_glXChannelRectSGIX = (PFNGLXCHANNELRECTSGIXPROC)load("glXChannelRectSGIX");
 glad_glXQueryChannelRectSGIX = (PFNGLXQUERYCHANNELRECTSGIXPROC)load("glXQueryChannelRectSGIX");
 glad_glXQueryChannelDeltasSGIX = (PFNGLXQUERYCHANNELDELTASSGIXPROC)load("glXQueryChannelDeltasSGIX");
 glad_glXChannelRectSyncSGIX = (PFNGLXCHANNELRECTSYNCSGIXPROC)load("glXChannelRectSyncSGIX");
}
